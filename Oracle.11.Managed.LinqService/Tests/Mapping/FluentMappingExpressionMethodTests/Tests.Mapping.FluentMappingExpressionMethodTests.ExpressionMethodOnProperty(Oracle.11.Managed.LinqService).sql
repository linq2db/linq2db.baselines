BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	"InstanceClass" t
WHERE
	CAST(t."Id" AS VarChar(255)) || CAST(t."Value" AS VarChar(255)) = CAST(t."Id" AS VarChar(255)) || t."Value"

