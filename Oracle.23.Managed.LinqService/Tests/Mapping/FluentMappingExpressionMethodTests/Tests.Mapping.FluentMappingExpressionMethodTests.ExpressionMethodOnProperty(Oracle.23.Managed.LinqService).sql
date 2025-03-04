BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	CAST(t."Id" AS VarChar2(4000)) || CAST(t."Value" AS VarChar2(4000)) = CAST(t."Id" AS VarChar2(4000)) || t."Value"

