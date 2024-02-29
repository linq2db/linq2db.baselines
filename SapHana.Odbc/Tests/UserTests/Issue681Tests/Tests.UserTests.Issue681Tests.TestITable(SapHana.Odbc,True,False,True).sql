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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	current_schema
FROM
	"LinqDataTypes" "_"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"LINKED_DB"."TESTDB"."Issue681Table" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table"

