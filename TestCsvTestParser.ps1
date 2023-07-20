# TextParserを使って区切り文字が「","」のCSVファイルを1レコードずつ処理をする
#-------------------------------------------------------------
# テスト用のCSVファイルを読み込む
#-------------------------------------------------------------
# TextParserを使って区切り文字が「","」のCSVファイルを1レコードずつ処理をする
$parser = New-Object Microsoft.VisualBasic.FileIO.TextFieldParser(".\Dummy.csv")
$parser.Delimiters = @(",")

# ファイルの終端まで繰り返し
while (!$parser.EndOfData) {
    # 1レコード読み込む
    $row = $parser.ReadFields()
    # 1レコードを表示する
    $row | Format-Table
}

# ファイルを閉じる
$parser.Close()


