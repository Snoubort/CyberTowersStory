# Рекурсивный поиск всех .twee файлов в src и объединение
Get-ChildItem -Path "src" -Filter *.twee -Recurse |
    Sort-Object FullName |
    Get-Content |
    Set-Content -Path "build/story.twee"

Write-Host "✅ Файл успешно собран: build/story.twee"