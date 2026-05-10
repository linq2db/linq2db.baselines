-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	e."Id"
FROM
	"SqlConcatTestEntity" e
ORDER BY
	e."StrReq" || 'X'

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"SqlConcatTestEntity" t1

