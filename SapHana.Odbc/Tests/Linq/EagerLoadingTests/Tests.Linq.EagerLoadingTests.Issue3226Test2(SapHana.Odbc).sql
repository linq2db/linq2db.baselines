-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	"Item" "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Text"
FROM
	"Item" "x"

