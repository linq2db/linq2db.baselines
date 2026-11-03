-- YDB Ydb
DECLARE $suffix Text(1) -- String
SET     $suffix = '-'u

SELECT
	r.Plain || r.Conv || Coalesce($suffix, ''u) as c1
FROM
	PlainAndConvertedUnicodeRow r
LIMIT 2

