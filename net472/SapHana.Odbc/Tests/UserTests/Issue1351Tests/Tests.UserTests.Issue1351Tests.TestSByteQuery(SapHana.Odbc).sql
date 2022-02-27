BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "T1351Model"
(
	"ID"           Integer NOT NULL,
	"TestField"    TinyInt NOT NULL,
	"TestNullable" TinyInt     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ID",
	"_"."TestField",
	"_"."TestNullable"
FROM
	"T1351Model" "_"
WHERE
	"_"."TestField" = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ID",
	"_"."TestField",
	"_"."TestNullable"
FROM
	"T1351Model" "_"
WHERE
	("_"."TestNullable" IS NULL OR "_"."TestNullable" <> 1)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T1351Model"

