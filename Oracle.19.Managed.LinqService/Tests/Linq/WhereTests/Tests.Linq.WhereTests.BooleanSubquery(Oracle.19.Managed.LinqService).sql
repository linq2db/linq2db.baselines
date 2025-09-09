BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

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

