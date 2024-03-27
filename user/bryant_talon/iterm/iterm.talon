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
ack: "awk "
break: key(ctrl-c)
cat: "cat "
clear line: key(ctrl-u)
cookbooks: "coo\n"
clone jenkins: 
	"git clone git@ghe.megaleo.com:PBUPRODENG/ai-jenkins-job-dsl.git ai-jenkins-job-dsl-"
	edit.paste()
	"\n"
	"cd ai-jenkins-job-dsl-"
	edit.paste()
	"\n"
	"git checkout -b " 
	edit.paste()
	"\n\n"
flush denes: "flush_dns\n"
foreground: "fg\n"
fuzzy: key(ctrl-r)
(get|git) pull: "git pull\n"
go tools: "got\n"
grep deep: "grep -r "
grep: "grep "
highlight: 
	edit.copy() 
	edit.paste()
	"\n"
history: "history"
jobs: "jobs\n"
jump <user.text>: "j {text}\n"
jump pang see <number> cube: "ssh peng-{number}-kube01.prodeng.adaptiveplanning.com"
jump: "j "
less: "less "
pane left: key("alt-super-left")
pane right: key("alt-super-right")
p e: "cd ~/pe\n"
pipe <user.text>: "| {text}"
priding: "prodeng"
prod eng tools: "pot\n"
test one: key("super-delete")
test two: "hello"
root me: "sudo su -\n"
terraform: "ter\n"
sech: "sesh\n"
slap: "\n"
ssh: "ssh "
tab <number>: user.tab_jump(number)
talent: "talon"
terraform environment: "cd ~/pe/ai-terraform/deployments/ai-cluster/env\n"
vim quit: ":q!\n"
vim save: key("Z:2") 
	key(":")
	key("q")
	key("!")
	key("\n")##################################
# aws
##################################
#aws console: "sso-cli aws --region us-west-2 --profile prodeng console\n"
aws console: "sso-cli aws --region us-west-2 --role arn:aws:iam::506618886476:role/sso-ldap-prodeng-user console\n"
aws dev: "aws_dev\n"
aws non prod: "aws_nonprod\n"
aws prod: "aws_prod\n"
##################################
# knife
##################################
knife dev: "switchToDevProdEngChefServer\n"
knife node list: "knife node list "
knife non prod: "switchToNonProdChefServer\n"
knife prod: "switchToProdChefServer\n"
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