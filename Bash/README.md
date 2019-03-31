# Bash脚本文件



## 1.sync_to_github

```bash
#!/bin/bash

echo "git add ."
git add .

echo "git commit"
echo "Please enter comments for commit:"
comment="commit new code"
read comment
git commit -m "$comment"

echo "git fetch origin master"
git fetch origin master

echo "git merge origin/master"
git merge origin/master

echo "git push origin master:master"
git push origin master:master
```



## 2.run (cpp,python,java)

~~~bash
#!/bin/bash

filename=${1%.*}
fileformat=${1##*.}

if [ $fileformat == 'cpp' ]
then
	outname=$filename".out"
	g++ $1 -o $outname
	./$outname
 	rm $outname

elif [ $fileformat == 'py' ]
then
	python3 $1

elif [ $fileformat == 'java' ]
then
	javac $1
	java $filename
fi
~~~



## 3.desk (Toggle Directory to Desktop)

```bash
vim ~/.bashrc
alias desk='cd /mnt/c/Users/MWASAWM/Desktop'
source ~/.bashrc
```



## 4.creat_files (10 cpp files for ACM)

```bash
#!/bin/bash
for((i=1;i<=10;i++))
do
	filename=""$i".cpp"
	touch $filename
	let "int++"
done
```



## 5.git_free_password

[git_free_password.txt](<https://github.com/MWASAWM/Configuration/blob/master/Bash/git_free_password.txt>)


