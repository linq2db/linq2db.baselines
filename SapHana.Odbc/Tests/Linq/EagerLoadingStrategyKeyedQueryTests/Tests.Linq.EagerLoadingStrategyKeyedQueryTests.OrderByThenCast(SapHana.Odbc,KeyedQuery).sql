-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"k_1"."item",
	"d"."Id",
	"d"."ItemId",
	"d"."Log"
FROM
	(
		SELECT 1 AS "item" FROM DUMMY
		UNION ALL
		SELECT 2 FROM DUMMY) "k_1"
		INNER JOIN "EagerOrderItemLog" "d" ON "k_1"."item" = "d"."ItemId"
ORDER BY
	"d"."Id" DESC

