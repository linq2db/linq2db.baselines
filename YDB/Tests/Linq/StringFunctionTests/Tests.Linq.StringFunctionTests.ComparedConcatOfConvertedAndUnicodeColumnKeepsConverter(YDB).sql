-- YDB Ydb
DECLARE Code Text(4) -- AnsiString
SET     Code = 'x:AT'u

SELECT
	COUNT(*) as Count_1
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Coalesce(t.Code, ''u) || Coalesce(t.Title, ''u)) LIKE $Code

-- YDB Ydb
DECLARE bound Text(4) -- AnsiString
SET     bound = 'x:AT'u

SELECT
	COUNT(*) as Count_1
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Coalesce(t.Code, ''u) || Coalesce(t.Title, ''u)) = $bound

-- YDB Ydb
DECLARE bound Text(4) -- AnsiString
SET     bound = 'x:AT'u

SELECT
	COUNT(*) as Count_1
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Coalesce(t.Code, ''u) || Coalesce(t.Title, ''u)) = $bound

