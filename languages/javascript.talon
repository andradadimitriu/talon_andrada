#code.language: javascript
#-
fix import|six import| seek imports| six imports: user.idea("action OptimizeImports")

settings():
    key_wait = 10.0

^(I think I | a inky | a sin I | asynky) <user.text>$:
    insert("async ")
    user.code_default_function(text)
else: "else {"
^if$: "if(){"
pixels: "px"
await: "await "
async: "async "
export: "export "
const: "const "
const <user.text>:
    insert("const ")
    insert(user.formatted_text(text, 'PRIVATE_CAMEL_CASE'))
undefined: "undefined"
import:
    insert('import  from \"\";')
    edit.left()
    repeat(1)
spread: "..."
return  <user.text>$:
    insert("return ")
    insert(text)
thez | dive|dive tags: "<div>"
link tags: "<a>"
a reef: "href="
^taggy$:
    insert("<")
    insert(">")
    edit.left()
end tag:
    insert("</")
^<user.text> taggy$:
    insert("<")
    insert(text)
    insert(">")

dot js: ".js"
describe:
    insert("describe(\'\', () => {});")
    edit.left()
    repeat(2)
    insert("\n")
    user.idea("find prev ', action EditorLeft")
write test:
    insert("test(\'\', () => {});")
    edit.left()
    repeat(2)
    insert("\n")
    user.idea("find prev ', action EditorLeft")
console log:
    insert("\nconsole.log();")
    edit.left()
    repeat(1)
semi:
    edit.line_end()
    insert(";")
debugger: "debugger;"
object keys:
    insert("Object.keys(")
    edit.left()
    repeat(1)
object (values|walls|vals):
    insert("Object.values(")
    edit.left()
    repeat(1)
use effect:
    insert("useEffect(() => {}, [])")
    edit.left()
    repeat(5)
    insert("\n")

arrow function:
    insert("()=>{}")
    edit.left()
    repeat(4)
of iteration:
    insert("for(const elem of ){}")
    edit.left()
    insert("\n")
    user.idea("find prev ), action EditorLeft")

if iteration:
    insert("for(const i in ){}")
    edit.left()
    insert("\n")
    user.idea("find prev ), action EditorLeft")

(simple iteration)|^(for loop)$:
    insert("for(let i=0;i<=;i++){}")
    edit.left()
    insert("\n")
    user.idea("find prev ;, action EditorLeft")
array from:
    insert("Array.from({})")
class name:
    insert("className")
