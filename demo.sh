# p4
# z-shell plugins demo and explanation

# p7
cal
date
file /etc/passwd /usr /bin/sh
pwd
which zsh
whoami
uname
head /etc/passwd
tail /etc/passwd
wc -l /etc/passwd
wc -c /etc/passwd /etc/group
cat sonnets.txt
ls
ls -a
ls -alh

# p8
ls; pwd # run second command regardless of the status of first command
ls && pwd # run second command if first succeeds
ls || pwd # run second command if first fails

# p9
# a. each program does one thing well
sort numbers.txt
uniq numbers.txt
fold -w30 sonnets.txt
grep thou sonnets.txt

# b. everything is a file
ls -l /dev
ls /dev/disk<TAB>
ls /dev/std<TAB>
ls /dev/tty<TAB>
head -30 /dev/zero | tr "\0" 0
head -30 /dev/urandom
hexdump -C -n200 /dev/urandom
LC_ALL=C tr -cd 'A-Za-z0-0' </dev/urandom


 # p10
 cat <names.txt
 cat names.txt >names2.txt
 cat names.txt >>names2.txt
 cat no-exist.txt >ne.txt
 cat no-exist.txt >ne.txt 2>&1
 cat ne.txt

 # p11
 cat names.txt | sort | uniq | column -c 100

# p12
vim ~/.zshrc
# edit to include custom bin path

#p13
syslog | more
syslog | less
while true; do echo $SHELL >>a.txt; sleep 1; done &; 
less +F a.txt # ctrl-c; shift+f; ctrl-c; :q

#p14
man ls
man 1 ls
man hier
info vim
ls --help
ls -h # doesn't work
git --version 
git -v
npm i -g tldr
tldr ls
man -k printf
whatis printf
apropos printf

# p16
ls --<TAB>
ls /usr/bin/<TAB>
ls /u/l/b<TAB>
git checkout <TAB>

# p18
pwd
cd /Users/junaid
cd projects/cmdline
pushd ~/caremerge
pushd ~/data
dirs
popd
popd

# p19
# cp, mv, ln, rm, rmdir, mkdir demo

# p20
echo **/*
echo *
echo ~
echo a{1..5}.txt
echo file{p,a,e}.txt
echo file{a,b}{1,3}.txt
echo file{a{1,2},b,c}.txt

# p21
echo The date today is `date`
echo The date today is $(date)
echo "Next year will be $(expr $(date +%Y) + 1)."

# p22
echo *
echo $SHELL
echo \$SHELL
echo "*"
echo "Shell is: $SHELL"
echo "Hostname is: $(hostname -s)"
echo 'Shell is: $SHELL'
echo 'Hostname is: $(hostname -s)'

# p23
echo $USER
echo $SHELL
echo $UID $GID
$DATE=$(date)
echo $DATE
./printmyenv
export NODE_ENV=development
./printmyenv

# p24
sudo su
sudo -i
su junaid

# p26
ls -l
chown junaid:junaid a.txt
chown -R junaid:junaid test/
chmod 755 a.txt
chmod g+rwX test/

# p27
ps
ps -ef
ps aux
# show PID and Effective UID / owner

# p29
sleep 10000 &
jobs
fg %1
^z
jobs
ps j
bg %1
jobs

# p32
dd if=/dev/zero of=/dev/null &
dd if=/dev/zero of=/dev/null &
dd if=/dev/zero of=/dev/null &
killall dd

node 
pgrep nod
pgrep -l nod
kill -KILL <PID>
kill -9 <PID>
sudo lsof -i tcp:3000
kill -KILL <PID>

