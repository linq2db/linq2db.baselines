-- Firebird.5 Firebird4
SELECT
	Coalesce((
		SELECT
			SUM(CASE
				WHEN 0 >= "row_1"."Value" THEN 0
				ELSE "row_1"."Value"
			END + 1)
		FROM
			"Row" "row_1"
		WHERE
			"row_1"."ParentId" = "parent"."Id"
	), 0)
FROM
	"ParentRow" "parent"
ORDER BY
	"parent"."Id"

