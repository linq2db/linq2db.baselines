BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T1351Model"

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
	"t1"."ID",
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	"t1"."TestField" = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	("t1"."TestNullable" <> 1 OR "t1"."TestNullable" IS NULL)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "T1351Model"

