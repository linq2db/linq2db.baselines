-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."StrReq"
FROM
	"SqlConcatTestEntity" e
WHERE
	e."StrReq" || ' I' = 'Programmer I'

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"SqlConcatTestEntity" t1

