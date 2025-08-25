BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value",
	'M' || CAST(t1."Id" AS VarChar(255))
FROM
	"InstanceClass" t1

