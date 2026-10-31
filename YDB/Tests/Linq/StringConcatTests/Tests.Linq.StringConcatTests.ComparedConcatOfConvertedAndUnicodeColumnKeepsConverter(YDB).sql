-- YDB Ydb
DECLARE $bound Text(5) -- AnsiString
SET     $bound = 'x:c1T'u

SELECT
	COUNT(*) as Count_1
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) = $bound

