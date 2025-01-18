BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t,
	"WhereWithBool" x
WHERE
	x."BoolValue" = 1 AND x."Id" = 1

