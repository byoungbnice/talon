os: mac
app: iterm2
-
# user/community/tags/terminal/unix_utilities.talon
# user/community/tags/terminal/unix_utilities.py
# less user/community/tags/terminal/unix_utilities.py
#
core {user.unix_utility}: "{unix_utility} "
# undo "git"
##################################
^art a factory$: " artifactory "
(ack|awk): 
	"awk '{print $1 '"
	key(left)
	key(left)
^(apt|up) get <user.text>:
	"apt-get {text} "
^(apt|up) cash <user.text>:
	"apt-cache {text} "
(backward|backwards) <user.ordinals>:
	key(esc b)
	repeat(ordinals - 1)
(backward|backwards): 
	key(esc b)
(forward|forwards) <user.ordinals>:
	key(esc f)
	repeat(ordinals - 1)
(forward|forwards): 
	key(esc f)
^break <user.ordinals>$: 
	key(ctrl-c)
	repeat(ordinals - 1)
^break$: 
	key(ctrl-c)
^broadcast$: key("cmd-shift-i")
^cat$: "cat "
^clear line$: key(ctrl-u)
^change mod$: "chmod "
# prints which nodes don't have a given text
# most probably due to afinity cpu/memory. 
# This typically works when the pod in question
# exist on all the nodes. 
^check resource <user.text>:
	"resource={text}\n"
	"list=$(sudo kubectl get nodes"
	"|grep  -v NAME|cut -d ' ' -f 1)\n"
	"for i in $list\n"
	"do\n"
	"text=$(sudo kubectl describe nodes $i"
	"|grep -A 1000 Non-terminated |pr -to 2)\n"
	"echo $text|grep $resource 2>1 > /dev/null\n"
	"[ $? -eq 1 ] && echo \"======>$i\" && echo \"$text\"\n"
	"done\n"
	"for i in $list\n"
	"do\n"
	"text=$(sudo kubectl describe nodes $i"
	"|grep -A 1000 Non-terminated |pr -to 2)\n"
	"echo $text|grep $resource 2>1 > /dev/null\n"
	"[ $? -eq 1 ] && echo \"======>$i\" && echo \"$text\"|egrep 'memory|cpu'\n"
	"done\n"
^cookbook environments$: "coo;cd ../environments\n"
^cookbooks$: "coo\n"
^check container$: "sudo ls -l /var/lib/kubelet/containerd/\n"
^cluster ssh$: "csshi "
^d  n f$: "sudo dnf "
^e grep: 
	"egrep \"()\""
	key("left")
	key("left")
^(fine|find) files$: "find . | xargs"
^fine dns$: "~/scripts/find_dns.sh "
^fine all dns$: "~/scripts/find_dns.sh -a "
^fine instances$: "~/scripts/find_instances.sh "
^(flesh|flush) (D N S|denes)$: "flush_dns\n"
^foreground$: "fg\n"
^fuzzy$: key(ctrl-r)
########## git 
get: "git "
get add: "git add "
get branch: "git branch\n"
get clone: "git clone "
get commit highlight:
	user.mouse_drag_end()
	edit.copy()	
	"git commit -a -m \""
	edit.paste()
	" \""
	key(left)
get commit:
	"git commit -a -m \" \""
	key(left)
get pull: "git pull\n"
get push: "git push "
get remove: "git rm "
get status: "git status\n"
^(get|git) pull$: "git pull\n"
^(get|git) log$: "git log -p "
^git sync master$:
	"git checkout master;"
	"git pull;"
	"git checkout -;"
	"git merge master"
#	"git fetch;"
#	"git rebase origin/primary"
git sync$:
	"git checkout primary;"
	"git pull;"
	"git checkout -;"
	"git merge primary"
^go tools$: "got\n"
^E grep$: "egrep "
^grep deep$: "grep -r "
^pipe grep$: " | grep "
^for loop$: 
	"for i in ; do\n" 
	"done\n"
	key(up)
	key(esc b)
	key(esc b)
	key(esc b)
grep: "grep "
^hcl$: "hcl "
^head$: "head "
^highlight$: 
	edit.copy() 
	edit.paste()
	"\n"
^history$: "history"
^i p c scripts$: "cd ~/code/ipc/scripts; git pull; make reinstall\n"
^jobs$: "jobs\n"
^journal control <user.text>$: 
	"sudo journalctl -u {text}\n"
	"G"
^jump terraform vars$: "cd deployments/ai-cluster/env/prod/cluster\n"
^jump <user.text>: "j {text}\n"
^go peng-c<number_small>: "ssh peng-{number_small}-kube01.prodeng.adaptiveplanning.com"
^jump$: "j "
less: "less "
linecount: "| wc -l"
^l s (block|blocks)$: "sudo lsblk\n"
^l s$: "ls -ltr "
^(maker|make dir)$: "mkdir "
^move$: "mv "
^net stat$: "netstat -an | grep LISTEN | less\n"
^notes: "cd ~/notes/"
^pane left$: key("alt-super-left")
^pane right$: key("alt-super-right")
^p e$: "cd ~/pe\n"
^pipe <user.text>: "| {text}"
priding: "prodeng"
^prod eng tools$: "pot\n"
^ps$: "ps -ef"
^python$: "python3 "
^p w d$: "pwd\n"
^remove <user.ordinals>:
	key("ctrl-w")
	repeat(ordinals - 1)
^remove$: key("ctrl-w")
^root me$: "sudo su -\n"
^r p m query all$: "rpm -qa "
^r p m query$: "rpm -ql "
^scripts$: "scr\n"
^slash temp$: "/tmp"
key(super-delete): key("ctrl-w")
^s (diff|deaf): "sdiff -Ws " 
^sech$: "sesh\n"
^services$: "ser\n"
^slap: "\n"
^ssh (ad|add) delete$: "ssh-add -D\n"
^ssh highlight$: 
	"ssh "
	user.mouse_drag_end()
	edit.copy()
	edit.paste()
	"\n"
^ssh$: "ssh "
^system control <user.text>$: "systemctl {text} "
^sudo$: "sudo "
^tab <number>$: user.tab_jump(number)
^tail$: "tail "
^talent$: "talon"
^terraform$: "ter\n"
^terraform environment cpe$: "cd deployments/ai-cluster/env/cpe/cluster\n"
^terraform environment diff$: "cd deployments/ai-cluster/env/diff/cluster\n"
^terraform environment obf$: "cd deployments/ai-cluster/env/obf/cluster\n"
^terraform environment peng$: "cd deployments/ai-cluster/env/peng/cluster\n"
^terraform environment perf$: "cd deployments/ai-cluster/env/perf/cluster\n"
^terraform environment prod$: "cd deployments/ai-cluster/env/prod/cluster\n"
^terraform environment sbox$: "cd deployments/ai-cluster/env/sboxr/cluster\n"
^tmux attach$: "tmux att\n"
^bar lib$: "/var/lib/"
#^update go provision$: 
^unique$: " uniq "
^test$: 
	"cd ~/pe/gotools/goprovisionk8s\n"
	"go build -o goprovisionk8s-$(grep -i version cmd/root.go |"
	"grep -v '^//'|"
	"sed 's/\"//g'|"
	"awk '{print "
	"$NF}"
	"')\nmv goprovisionk8s-* ~/pe/bin; ls -ltr ~/pe/bin/gopro*"
^vim quit$: ":q!\n"
^vim save$: key("Z:2")
	key(":")
	key("q")
	key("!")
	key("\n")##################################
(vim| v i): "vim "
watch last: "watch -n 10 \"!!\"\n"
^yum$: "sudo yum "
# aws
##################################
#aws console: "sso-cli aws --region us-west-2 --profile prodeng console\n"
^aws console$: "sso-cli aws --region us-west-2 --role arn:aws:iam::506618886476:role/sso-ldap-prodeng-user console\n"
^aws (pang|peng)$: "aws_dev\n"
^aws non prod$: "aws_nonprod\n"
^aws prod$: "aws_prod\n"
^aws staging$: "okta2aws login\n"
##################################
# knife
##################################
^knife artifactory$: "knife artifactory "
^knife (peng|pang)$: "switchToDevProdEngChefServer\n"
^knife node delete$: "knife node delete "
^knife node edit$: "knife node edit "
^knife node list$: "knife node list "
^knife node show$: "knife node show "
^knife environment list$: "knife environment list "
^knife environment show$: "knife environment show "
^knife cookbook list$: "knife cookbook list "
^knife cookbook show$: "knife cookbook show "
^knife cookbook upload$: "knife cookbook upload "
^knife diff$: "knife diff "
^knife frog$: "switchToFrog\n"
^knife non prod$: "switchToNonProdChefServer\n"
^knife prod$: "switchToProdChefServer\n"
^knife staging$: "switchToStagingChefServer\n"
^knife search$: "knife search \n"
^knife status$: "knife status \n"
^knife key fix:
	key(up)
	" 2>&1|cut -d ' ' -f6|xargs |tee /tmp/ips.txt; "
	"for i in $(cat /tmp/ips.txt); do ssh-keygen -R $i; done\n"
^knife add no verify:
	key(up)
	key(ctrl-a)
	key(alt-right)
	key(alt-right)
	" --no-host-key-verify \n"
^recipe version:
	"export recipe=role_base; knife search "
	"\"(name:perf*) AND recipes:$recipe\:\\:*\" "
	"-a cookbooks -F json | jq -r --arg recipe \"$recipe\" "
	"'.rows[] | to_entries[] | \"\(.value.cookbooks[$recipe]."
	"version)   \(.key)\"'; echo \"Above for recipe: $recipe\""

##################################
^shuttle staging: 
	"python3 ~/scripts/shuttle.py staging\n"
##################################
tag(): terminal
# todo: filemanager support
#tag(): user.file_manager
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs
tag(): user.readline
##################################
