-- YDB Ydb
SELECT
	r.Plain || r.Conv as c1
FROM
	PlainAndConvertedUnicodeTable r
ORDER BY
	r.Id
LIMIT 1

-- YDB Ydb
DECLARE $read Text(6) -- String
SET     $read = 'A-x:n1'u

SELECT
	COUNT(*) as Count_1
FROM
	PlainAndConvertedUnicodeTable r
WHERE
	(r.Plain || r.Conv) LIKE $read

-- YDB Ydb
DECLARE $read Text(6) -- String
SET     $read = 'A-x:n1'u

SELECT
	COUNT(*) as Count_1
FROM
	PlainAndConvertedUnicodeTable r
WHERE
	(r.Plain || r.Conv) = $read

