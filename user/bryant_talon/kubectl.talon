os: mac
app: iterm2
-
git: "get"
##################################
# kubectl
################################## add ons
add labels:
	#key("up")
	" --show-labels "
add selector:
	#key("up")
	" --selector "
add wide:
	#key("up")
	" -o wide "
add (yamow|yamule|yamool):
	#key("up")
	" -o yaml "
################################## misc
exec bash highlight: 
	# sudo kubectl exec -it -n sbox ks-0 -- bash
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl exec -it -n "
	edit.paste()
	" -- bash \n"
	"PS1=\"$(hostname)\$ \"\n"
logs highlight: 
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
namespace all: "sudo kubectl get namespaces -A\n"
node all: "sudo kubectl get nodes -A\n"
pod all: "sudo kubectl get pods -A\n"
################################## get / describe highlight
node get highlight: 
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl get node -n "
	edit.paste()
	" -o wide\n"
node describe highlight: 
	edit.copy() 
	"sudo kubectl describe nodes -n "
	edit.paste()
	"\n"
pod get highlight: 
	user.mouse_drag_end()
	edit.copy()
	"sudo kubectl get pods -n "
	edit.paste()
	" -o wide\n"
pod describe highlight: 
	# kubectl describe pod -n prodeng disco-integration-tasks-59d5c85dbd-nvfqg
	edit.copy() 
	"sudo kubectl describe pods -n "
	edit.paste()
	"\n"
################################## default <text> all
# nodes, pods
<user.text> all: "sudo kubectl get {text} -A\n"
# generic commands
cube <user.text> highlight: 
	edit.copy() 
	"sudo kubectl {text} -n "
	edit.paste()
