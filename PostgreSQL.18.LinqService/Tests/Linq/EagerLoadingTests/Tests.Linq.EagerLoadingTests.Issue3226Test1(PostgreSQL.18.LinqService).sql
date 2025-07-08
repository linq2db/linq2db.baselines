BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x
ORDER BY
	(
		SELECT
			SUM("a_Values"."Value")
		FROM
			"ItemValue" "a_Values"
		WHERE
			x."Id" = "a_Values"."ItemId"
	)

