-- SapHana.Odbc SapHanaOdbc
SELECT
	"m_1"."Id",
	"d"."Log"
FROM
	"Item" "m_1"
		INNER JOIN "ItemLog" "d" ON "m_1"."Id" = "d"."ItemId"
ORDER BY
	"d"."ItemId",
	"d"."Id" DESC,
	"m_1"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

