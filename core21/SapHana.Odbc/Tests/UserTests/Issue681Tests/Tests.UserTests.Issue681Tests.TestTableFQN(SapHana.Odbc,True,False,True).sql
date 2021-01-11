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
	"t1"."ID"
FROM
	"LINKED_DB"."TESTDB"."LinqDataTypes" "t1"

