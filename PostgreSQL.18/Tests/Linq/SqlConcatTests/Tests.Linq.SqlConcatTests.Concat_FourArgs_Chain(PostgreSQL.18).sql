-- PostgreSQL.18 PostgreSQL

SELECT
	e."Id"
FROM
	"SqlConcatTestEntity" e
WHERE
	e."Str1" || ' ' || e."StrReq" || '!' = 'John Programmer!'

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"SqlConcatTestEntity" t1

