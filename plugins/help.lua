do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'اوامر2' then
local alnaze = [[ 
 صوت + الكلمه (لتحويل النص لصوت)🔘
⌚️time + المنطقه  l(معرفه الوقت)
🔄/ملصق (تحويل الصوره الى ملصق)
🔄/صوره (لتحويل الملصق الى صوره)
🌐/انستا + يؤزر    لجلب معلومات الحساب
🔄/tr + كلمه عربيه
لتحويلها للنكليزي 
🔄/tr ar + الكلمه انكليزيه
تحويلها للعربي 
🔄زخرفه+ كلمه عربيه
للزخرفه باللغه العربيه
🔄زخرفه انكليزي+ الكلمه انكليزيه
للزخرفه بالغه الانكليزيه


]]
reply_msg(reply_id, alnaze, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) then
local alnaz = "للمشرفين فقط ????:sunglasses:"
reply_msg(reply_id, alnaze, ok_cb, false)
end

end
return {
patterns ={
"^(اوامر2)$",
},
run = run
}
end
