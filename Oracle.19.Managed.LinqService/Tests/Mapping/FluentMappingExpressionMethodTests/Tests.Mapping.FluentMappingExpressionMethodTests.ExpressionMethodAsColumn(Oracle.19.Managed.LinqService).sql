BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value",
	'M' || CAST(t1."Id" AS VarChar2(4000))
FROM
	"InstanceClass" t1

