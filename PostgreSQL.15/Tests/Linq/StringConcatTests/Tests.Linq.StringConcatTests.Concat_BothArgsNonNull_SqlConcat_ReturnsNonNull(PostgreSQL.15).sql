-- PostgreSQL.15 PostgreSQL

SELECT
	e."Id"
FROM
	"ConcatTestEntity" e
WHERE
	(e."StrReq" || e."StrReq") IS NOT NULL

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

