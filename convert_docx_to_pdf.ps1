$docxPath = "c:\Users\Dell\OneDrive\Desktop\bharadwaj portfolio\PIZZA_SALES_REPORT.docx"
$pdfPath = "c:\Users\Dell\OneDrive\Desktop\bharadwaj portfolio\PIZZA_SALES_REPORT.pdf"

$word = New-Object -ComObject Word.Application
$word.Visible = $false

Write-Host "Converting PIZZA_SALES_REPORT.docx to PIZZA_SALES_REPORT.pdf..."

try {
    $doc = $word.Documents.Open($docxPath)
    $doc.SaveAs([ref] $pdfPath, [ref] 17) # 17 is wdFormatPDF
    $doc.Close()
    Write-Host "Success!"
}
catch {
    Write-Host "Error converting: $_"
}

$word.Quit()
Write-Host "Conversion complete."
