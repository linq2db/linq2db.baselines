-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Str1" || t."Str2" || t."StrReq"
FROM
	"SqlConcatTestEntity" t
ORDER BY
	t."Id"

