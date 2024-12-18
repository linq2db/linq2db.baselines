BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "table1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "table1"
(
	"Id"     Integer       NOT NULL,
	"Field1" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "table2"
(
	"Table1Id" Integer       NOT NULL,
	"Field2"   NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "table3"
(
	"Table1Id" Integer       NOT NULL,
	"Field3"   NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @search NVarChar(5) -- String
SET     @search = 'test%'
DECLARE @search NVarChar(4) -- String
SET     @search = 'test'
DECLARE @search NVarChar(5) -- String
SET     @search = 'test%'

SELECT
	"row1"."Id"
FROM
	"table1" "row1"
		INNER JOIN "table2" "row2" ON "row1"."Id" = "row2"."Table1Id"
WHERE
	"row2"."Field2" LIKE ? ESCAPE '~'
UNION
SELECT
	"row1_1"."Id"
FROM
	"table1" "row1_1"
		INNER JOIN "table3" "row3" ON "row1_1"."Id" = "row3"."Table1Id"
WHERE
	"row3"."Field3" = ? AND "row3"."Field3" IS NOT NULL
UNION
SELECT
	"row1_2"."Id"
FROM
	"table1" "row1_2"
WHERE
	"row1_2"."Field1" LIKE ? ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "table1"

