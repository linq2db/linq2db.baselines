-- YDB Ydb
DECLARE bound Text(5) -- AnsiString
SET     bound = 'x:c1T'u

SELECT
	COUNT(*) as Count_1
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) = $bound

-- YDB Ydb
DECLARE bound Text(5) -- AnsiString
SET     bound = 'x:c1T'u

SELECT
	COUNT(*) as Count_1
FROM
	ConvertedConcatTitleRow p
WHERE
	$bound = (p.Conv || p.Title)

-- YDB Ydb
DECLARE Ids0_1 Text(5) -- String
SET     Ids0_1 = 'x:c1T'u

SELECT
	COUNT(*) as Count_1
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) IN ($Ids0_1)

