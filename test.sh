#!bin/sh
# shell test
test1=10
test2="test"

echo "res:${test1}"
echo "res:${test2}"
echo "PID:"$$ # process id
echo "argnum:"$#
# 引数全体を一つのリストとして文字列として返す
echo $*
# 配列として返す
echo $@

# 最後に実行したコマンドの実行結果
pwd 
echo $?

# test commandはeq,ne,lt,le,gt,geを持つ
if test $test1 -eq 10; then
echo "is 10"
fi

switchArg=10
case switchArg in
    1 ) echo "1";;
    10 ) echo "10";;
esac

for arg in $@
do
    echo ${arg}
done

# 文字列
# ! 文字列 = -z 文字列
# パーミッション表かもできる
if [ ! -e Liunx.txt ]; then
echo "Liunx.txtファイルがありません。"
fi

# 関数の作成
bigEcho()
{
	echo $@
}

# 関数呼び出し
bigEcho 10 20

while getopts l:t: opt
do
		echo $opt
		case ${opt} in
		l)　LIST=${OPTARG};;
		t)　TYPE=${OPTARG};;
		\?)
		exit 1;;
		esac
done

echo "LIST=${LIST}"
echo "TYPE=${TYPE}"

# keyboard waiting
read -p "Please input your name: " name
echo "Hi, $name."

n=1
until [ $n -gt 5 ]
do
	echo " $n 回目のループです."
	# 表示指定
	n=$(( n+1 ))
done

# 選択肢の提案
select i in cat dog monkey
do 
	echo $i
	break
done

# ヒアドキュメント
cat  << EOT
これは出力される
これも
EOT

