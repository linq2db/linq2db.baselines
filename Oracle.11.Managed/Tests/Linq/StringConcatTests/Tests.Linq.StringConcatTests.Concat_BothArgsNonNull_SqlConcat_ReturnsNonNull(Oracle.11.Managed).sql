-- Oracle.11.Managed Oracle11

SELECT
	e."Id"
FROM
	"ConcatTestEntity" e
WHERE
	e."StrReq" IS NOT NULL

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Str1",
	t1."Str2",
	t1."StrReq",
	t1."Num"
FROM
	"ConcatTestEntity" t1

