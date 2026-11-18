-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce((
		SELECT
			SUM(GREATEST(0, "row_1"."Value"))
		FROM
			"Row" "row_1"
		WHERE
			"row_1"."ParentId" = "parent"."Id"
	), 0)
FROM
	"ParentRow" "parent"
ORDER BY
	"parent"."Id"

