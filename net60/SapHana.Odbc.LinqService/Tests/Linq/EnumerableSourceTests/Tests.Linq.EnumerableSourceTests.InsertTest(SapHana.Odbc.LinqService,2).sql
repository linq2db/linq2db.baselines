BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TableToInsert"
(
	"Id"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	"r"."Id",
	"r"."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM DUMMY
		UNION ALL
		SELECT 4, 'Doe' FROM DUMMY) "r"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "r"."Id"
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
	"r"."Id",
	"r"."Value"
FROM
	(
		SELECT 3 AS "Id", 'Janet' AS "Value" FROM DUMMY
		UNION ALL
		SELECT 4, 'Doe' FROM DUMMY) "r"
		LEFT JOIN "TableToInsert" "t" ON "t"."Id" = "r"."Id"
WHERE
	"t"."Id" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

