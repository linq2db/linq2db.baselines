BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value",
	'M' || CAST(t1."Id" AS VarChar(255))
FROM
	"InstanceClass" t1

