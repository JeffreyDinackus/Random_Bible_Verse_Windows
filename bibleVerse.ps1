function Get-RandomQuote {
    $url = "https://bible-api.com/?random=verse?translation=kjv"
    $response = Invoke-RestMethod -Uri $url
    if ($response) {
        $quote_text = $response.text
        $quote_author = $response.reference
        return $quote_text, $quote_author
    } else {
        return "Failed to fetch quote."
    }
}

$quote_text, $quote_author = Get-RandomQuote
Write-Output "$quote_text"
Write-Output "$quote_author"
