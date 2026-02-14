-- PostgreSQL.13 PostgreSQL

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x
ORDER BY
	(
		SELECT
			SUM("a_Values"."Value") as "Sum_1"
		FROM
			"ItemValue" "a_Values"
		WHERE
			x."Id" = "a_Values"."ItemId"
	)

