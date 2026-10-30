-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Coalesce((
		SELECT
			SUM(CASE
				WHEN 0 >= row_1."Value" THEN 0
				ELSE row_1."Value"
			END)
		FROM
			"Row" row_1
		WHERE
			row_1."ParentId" = parent."Id"
	), 0)
FROM
	"ParentRow" parent
ORDER BY
	parent."Id"

