-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM DUMMY
		UNION ALL
		SELECT 4, 'Doe' FROM DUMMY) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM DUMMY
		UNION ALL
		SELECT 4, 'Doe' FROM DUMMY) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

