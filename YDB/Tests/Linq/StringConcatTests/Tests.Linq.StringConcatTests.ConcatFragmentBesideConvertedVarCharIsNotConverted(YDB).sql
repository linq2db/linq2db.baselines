-- YDB Ydb
DECLARE $dash Text(1) -- String
SET     $dash = '-'u

SELECT
	p.Conv || '|'u || Coalesce($dash, ''u) as c1
FROM
	ConvertedConcatRow p
LIMIT 2

