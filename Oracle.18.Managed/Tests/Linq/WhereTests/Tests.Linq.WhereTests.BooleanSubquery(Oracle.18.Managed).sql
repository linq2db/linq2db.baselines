-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t
WHERE
	(
		SELECT
			x."BoolValue"
		FROM
			"WhereWithBool" x
		WHERE
			x."Id" = 1
	) = 1

