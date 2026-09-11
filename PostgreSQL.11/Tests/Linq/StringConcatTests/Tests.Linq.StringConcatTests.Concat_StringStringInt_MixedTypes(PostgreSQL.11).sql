-- PostgreSQL.11 PostgreSQL
SELECT
	e."StrReq"
FROM
	"ConcatTestEntity" e
WHERE
	(Coalesce(e."StrReq", '') || ' 1') = 'Programmer 1'

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

