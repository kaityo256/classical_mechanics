file_name = ARGV[0]

# ファイルを読み込む
text = File.read(file_name)

# 正規表現で置換
target_pattern = /\*\*(.+?)\((.+?)\)\*\*/
updated_text = text.gsub(target_pattern, '**\1**(\2)')

# ファイルに上書き保存
File.write(file_name, updated_text)
