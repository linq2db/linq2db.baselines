-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	e."StrReq"
FROM
	"ConcatTestEntity" e
WHERE
	e."StrReq" || ' I' = 'Programmer I'

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

