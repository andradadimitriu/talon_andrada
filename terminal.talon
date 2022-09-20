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
