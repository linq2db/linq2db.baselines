BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue681Table"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value  -- Int32
SET     @Value = 10
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	"LINKED_DB"."TESTDB"."Issue681Table" "t1"
SET
	"Value" = ?
WHERE
	"t1"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table"

