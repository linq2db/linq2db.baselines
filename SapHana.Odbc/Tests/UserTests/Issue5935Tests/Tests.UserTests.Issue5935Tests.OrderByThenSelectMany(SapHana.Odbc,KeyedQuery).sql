-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"k_1"."item",
	"a_Tags"."Id",
	"a_Tags"."LogId",
	"a_Tags"."Name"
FROM
	(
		SELECT 1 AS "item" FROM DUMMY
		UNION ALL
		SELECT 2 FROM DUMMY) "k_1"
		INNER JOIN "ItemLog" "d" ON "k_1"."item" = "d"."ItemId"
		INNER JOIN "ItemTag" "a_Tags" ON "d"."Id" = "a_Tags"."LogId"
ORDER BY
	"d"."Id"

