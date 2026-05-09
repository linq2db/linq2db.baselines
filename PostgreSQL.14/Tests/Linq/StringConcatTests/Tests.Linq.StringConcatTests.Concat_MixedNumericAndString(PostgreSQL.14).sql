-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	e."Id"
FROM
	"ConcatTestEntity" e
WHERE
	e."Num"::text || '-' || Coalesce(e."StrReq", '') = '100-Programmer'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

