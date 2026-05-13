-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Str1" || t."Str2" || t."StrReq"
FROM
	"ConcatTestEntity" t
ORDER BY
	t."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

