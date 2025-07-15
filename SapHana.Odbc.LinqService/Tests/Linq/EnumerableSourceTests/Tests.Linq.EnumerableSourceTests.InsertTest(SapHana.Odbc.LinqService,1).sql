BeforeExecute
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
		SELECT 2 AS "Id", 'Janet' AS "Value" FROM DUMMY
		UNION ALL
		SELECT 3, 'Doe' FROM DUMMY) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

BeforeExecute
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
		SELECT 2 AS "Id", 'Janet' AS "Value" FROM DUMMY
		UNION ALL
		SELECT 3, 'Doe' FROM DUMMY) "t1"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "t1"."Id"
WHERE
	"t"."Id" IS NULL

