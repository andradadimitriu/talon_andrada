app.name: Terminal
-
^in pam start$: "npm start\n"
^in pam install$: "npm install\n"
^in pam test$: "npm test\n"
^where am I$: "pwd\n"
^serverless deploy$: "serverless deploy\n"
^go back <number>$:
	insert("cd ..")
	insert("/..")
	repeat(number-2)
	insert("\n")
^go back$:
	insert("cd ..")
	insert("\n")
^make dear <user.text>$:
    insert("mkdir ")
    insert(user.formatted_text(text, 'DASH_SEPARATED'))
^make dear$:
    insert("mkdir ")
^youngest$: "yarn test\n"
^git checkout$": "git checkout"
^history <user.text>$:
    key(ctrl-r)
    insert("{text}")
^history$:
    key(ctrl-r)
^cancel$:
    key(ctrl-c)
list: "ls -ltr"
 
^(him|visual insert) <user.text>$:
    insert("vim ")
    insert(text)
^save it$:
    key(esc)
    insert(":wq")
    key(enter)
