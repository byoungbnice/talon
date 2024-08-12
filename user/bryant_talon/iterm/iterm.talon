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
(ack|awk): "awk "
(backward|backwards): 
	key(esc b)
(forward|forwards): 
	key(esc f)
^break$: key(ctrl-c)
^cat$: "cat "
^clear line$: key(ctrl-u)
^change mod$: "chmod "
^cookbooks$: "coo\n"
^check container$: "sudo ls -l /var/lib/kubelet/containerd/\n"
^cluster ssh$: "csshi "
^d  n f$: "sudo dnf "
^fine dns$: "~/scripts/find_dns.sh "
^fine all dns$: "~/scripts/find_dns.sh -a "
^fine instances$: "~/scripts/find_instances.sh "
^flush denes$: "flush_dns\n"
^foreground$: "fg\n"
^fuzzy$: key(ctrl-r)
^(get|git) pull$: "git pull\n"
^(get|git) log$: "git log -p "
^git sync$:
	"git checkout primary;"
	"git pull;"
	"git checkout -;"
	"git merge primary"
^go tools$: "got\n"
^grep deep$: "grep -r "
^pipe grep$: " | grep "
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
^notes: "cd ~/notes/"
^pane left$: key("alt-super-left")
^pane right$: key("alt-super-right")
^p e$: "cd ~/pe\n"
^pipe <user.text>: "| {text}"
priding: "prodeng"
^prod eng tools$: "pot\n"
^ps$: "ps -ef"
^remove$: key("ctrl-w")
^root me$: "sudo su -\n"
^scripts$: "scr\n"
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
vim: "vim "
watch last: "watch -n 10 \"!!\"\n"
^yum$: "sudo yum "
# aws
##################################
#aws console: "sso-cli aws --region us-west-2 --profile prodeng console\n"
^aws console$: "sso-cli aws --region us-west-2 --role arn:aws:iam::506618886476:role/sso-ldap-prodeng-user console\n"
^aws dev$: "aws_dev\n"
^aws non prod$: "aws_nonprod\n"
^aws prod$: "aws_prod\n"
##################################
# knife
##################################
^knife dev$: "switchToDevProdEngChefServer\n"
^knife node delete$: "knife node delete "
^knife node list$: "knife node list "
^knife node show$: "knife node show "
^knife environment list$: "knife environment list "
^knife environment show$: "knife environment show "
^knife cookbook list$: "knife cookbook list "
^knife cookbook show$: "knife cookbook show "
^knife non prod$: "switchToNonProdChefServer\n"
^knife prod$: "switchToProdChefServer\n"
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
