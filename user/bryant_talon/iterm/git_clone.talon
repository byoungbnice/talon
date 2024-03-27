os: mac
app: iterm2
-
clone cookbooks: 
	"cd ~/pe;git clone git@ghe.megaleo.com:PBUPRODENG/ai-cookbooks.git ai-cookbooks-"
	edit.paste()
	"\n"
	"cd ai-cookbooks-"
	edit.paste()
	"\n"
	"git checkout -b " 
	edit.paste()
	"\n\n"
clone go tools: 
	"cd ~/pe;git clone git@ghe.megaleo.com:PBUPRODENG/gotools.git -"
	edit.paste()
	"\n"
	"cd gotools-"
	edit.paste()
	"\n"
	"git checkout -b " 
	edit.paste()
	"\n\n"
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