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
DECLARE @Value  -- Int32
SET     @Value = 10
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	"LINKED_DB"."TESTDB"."Issue681Table"
SET
	"LINKED_DB"."TESTDB"."Issue681Table"."Value" = ?
WHERE
	"LINKED_DB"."TESTDB"."Issue681Table"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table"

