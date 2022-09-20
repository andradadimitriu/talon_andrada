#code.language: javascript
#-

use state <user.text>:
    insert("\nconst [,] = useState(undefined);")
    user.idea("find prev ], action EditorLeft")
    key(left)
    insert(user.formatted_text(text, 'PRIVATE_CAMEL_CASE'))
    key(right)
    insert("set")
    insert(user.formatted_text(text, 'PUBLIC_CAMEL_CASE'))


