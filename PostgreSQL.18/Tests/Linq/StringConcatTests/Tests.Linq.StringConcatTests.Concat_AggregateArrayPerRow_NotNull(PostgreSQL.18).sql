-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	CONCAT_WS('', t."Str1", t."Str2", t."StrReq")
FROM
	"ConcatTestEntity" t
ORDER BY
	t."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

