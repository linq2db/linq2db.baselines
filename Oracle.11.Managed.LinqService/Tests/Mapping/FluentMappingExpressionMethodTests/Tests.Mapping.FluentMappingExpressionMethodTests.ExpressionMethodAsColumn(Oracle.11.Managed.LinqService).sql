BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value",
	'M' || CAST(t1."Id" AS VarChar2(4000))
FROM
	"InstanceClass" t1

