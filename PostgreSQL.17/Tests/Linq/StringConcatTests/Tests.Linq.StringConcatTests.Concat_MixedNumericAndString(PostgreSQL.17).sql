-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	e."Id"
FROM
	"ConcatTestEntity" e
WHERE
	(e."Num"::text || '-' || Coalesce(e."StrReq", '')) = '100-Programmer'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

