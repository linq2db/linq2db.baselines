-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Coalesce((
		SELECT
			SUM(GREATEST(0, row_1."Value"))
		FROM
			"Row" row_1
		WHERE
			row_1."ParentId" = parent."Id" AND GREATEST(0, row_1."Value") > 3
	), 0)
FROM
	"ParentRow" parent
ORDER BY
	parent."Id"

