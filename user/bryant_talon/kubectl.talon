os: mac
app: iterm2
-
^git$: "get"
##################################
# kubectl
################################## add ons
^add labels$:
	#key("up")
	" --show-labels "
^add selector$:
	#key("up")
	" --selector "
^add wide$:
	#key("up")
	" -o wide "
^add (yamow|yamule|yamool)$:
	#key("up")
	" -o yaml "
################################## misc
^exec bash highlight$: 
	# sudo kubectl exec -it -n sbox ks-0 -- bash
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl exec -it -n "
	edit.paste()
	" -- bash \n"
	"PS1=\"$(hostname)\$ \"\n"
^logs highlight$: 
	# kubectl logs -n prodeng disco-integration-tasks-59d5c85dbd-nvfqg
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl logs -n "
	edit.paste()
	"|less\n"
# kubectl -n perf exec -it ks-0 -- bash
# kubectl -n perf exec -it planning-application-app01-9b655768d-brrsx -- bash
# kubectl -n prod exec -it -c ks-2 -- /bin/bash
# kubectl -n prod exec -it ks-1 -c dovah-sidecar  -- /bin/bash
# kubectl -n prod exec -it ks-1 -c ks  -- /bin/bash
# kubectl -n prod exec -it ks-0 -- bash
################################## specific all due to speech accuracy
^(end point|end points) all$: "sudo kubectl get endpoints -A\n"
^namespace all$: "sudo kubectl get namespaces -A\n"
^node all$: "sudo kubectl get nodes -A\n"
^pod all$: "sudo kubectl get pods -A\n"
^p v c all$: "sudo kubectl get pvc -A\n"
^p (b|v) all$: "sudo kubectl get pv -A\n"
################################## get / describe highlight
^node get highlight$: 
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl get node -n "
	edit.paste()
	" -o wide\n"
^node describe highlight$: 
	edit.copy() 
	"sudo kubectl describe nodes -n "
	edit.paste()
	"\n"
^(node|nodes) label highlight$:
	edit.copy() 
	"sudo kubectl get nodes --show-labels "
	"| awk 'BEGIN { FS=\" \"; "
	"OFS=\"\\n\" } "
	"{ split($NF, labels, \",\"); "
	"if ($1 ~ /^[a-z]/) {"
	"print $1 }; for (i in labels) if (labels[i] ~ /=host$/) { gsub(\"=host\", \"\", labels[i]); "
	"print \"\\t\" labels[i] }; print \"\" }'"
	"| egrep --color \"^[a-z]|"
	edit.paste()
	"\"\n"
^(node|nodes) labels$:
	"sudo kubectl get nodes --show-labels "
	"| awk 'BEGIN { FS=\" \"; "
	"OFS=\"\\n\" } "
	"{ split($NF, labels, \",\"); "
	"if ($1 ~ /^[a-z]/) {"
	"print $1 }; for (i in labels) if (labels[i] ~ /=host$/) { gsub(\"=host\", \"\", labels[i]); "
	"print \"\\t\" labels[i] }; print \"\" }'\n"
^pod (event|events)$: 
	"sudo kubectl get pods -A|egrep -v 'Running|Complete|STATUS'"
	"| tr -s ' ' | cut -d' ' -f1-2,4|\n"
	"while read -r ns pod status; do\n"
	"if [[ \"$status\" =~ "
	"^(ContainerStatusUnknown|Error|Evicted)$ ]]"
	"\n"
	"then\n"
	"   echo \"$ns $pod          *** $status ***  \" \n"  
	"   sudo kubectl describe pods -n $ns $pod|grep -A 2 ^Status"
	"|pr -to 4\n"
	"elif [[ \"$status\" =~ "
	"^(ContainerCreating|CrashLoopBackOff|ImagePullBackOff|Pending)$ ]]"
	"\n"
	"then\n"
	"   echo \"$ns $pod          *** $status ***  \" \n"  
	"   sudo kubectl describe pods -n $ns $pod"
	"|grep -A 50 ^Events|pr -to 4\n"
	"else\n"
	"    echo \"POD PROBLEM: $ns $pod $status.\"\n"
	"fi\n"
	"echo \n"
	"done\n"
^pod not running$:
	"while [ 1 ]; do sudo kubectl get pods -A|awk '{ if ($1~/^NAM/) print; "
	"else if ($4 !~/Running/) print } '; date; sleep 2; done\n"
	#"else if ($4 !~/Running/ || $5 > 0) print } '; date; sleep 2; done\n"
	#"sudo kubectl get pods -A|awk '{ if ($1~/^NAM/) print; "
	#"else if ($4 !~/Running/ || $5 > 0) print } '\n"
^pod get highlight$: 
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl get pods -n "
	edit.paste()
	" -o wide\n"
^pod describe highlight$: 
	# kubectl describe pod -n prodeng disco-integration-tasks-59d5c85dbd-nvfqg
	edit.copy() 
	"sudo kubectl describe pods -n "
	edit.paste()
	"\n"
^p (b|v) c describe highlight$: 
	edit.copy() 
	"sudo kubectl describe pvc -n "
	edit.paste()
	"\n"
^cubit logs$: "sudo journalctl --full --unit kubelet\n"
cube only: " | grep kube01\n"
cube cuddle: "kubectl "
################################## default <text> all
# nodes, pods
<user.text> all$: "sudo kubectl get {text} -A\n"
# generic commands
^cube <user.text> highlight$: 
	edit.copy() 
	"sudo kubectl {text} -n "
	edit.paste()
