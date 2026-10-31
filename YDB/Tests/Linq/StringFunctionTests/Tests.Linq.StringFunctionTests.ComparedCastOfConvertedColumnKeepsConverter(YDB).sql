-- YDB Ydb
DECLARE $Code Text(3) -- AnsiString
SET     $Code = 'x:A'u

SELECT
	COUNT(*) as Count_1
FROM
	PrefixedCodeTable t
WHERE
	CAST(t.Code AS Text) LIKE $Code

-- YDB Ydb
DECLARE $bound Text(3) -- AnsiString
SET     $bound = 'x:A'u

SELECT
	COUNT(*) as Count_1
FROM
	PrefixedCodeTable t
WHERE
	CAST(t.Code AS Text) = $bound

