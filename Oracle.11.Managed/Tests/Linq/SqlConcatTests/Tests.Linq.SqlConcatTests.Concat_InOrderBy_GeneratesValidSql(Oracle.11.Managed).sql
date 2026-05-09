-- Oracle.11.Managed Oracle11

SELECT
	e."Id"
FROM
	"SqlConcatTestEntity" e
ORDER BY
	e."StrReq" || 'X'

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"SqlConcatTestEntity" t1

