-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	CAST(t."Id" AS VarChar(255)) || CAST(t."Value" AS VarChar(255)) = CAST(t."Id" AS VarChar(255)) || t."Value"

