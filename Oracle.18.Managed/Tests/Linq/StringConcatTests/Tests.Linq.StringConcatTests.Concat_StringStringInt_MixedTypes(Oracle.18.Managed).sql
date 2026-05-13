-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."StrReq"
FROM
	"ConcatTestEntity" e
WHERE
	(e."StrReq" || ' 1') = 'Programmer 1'

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

