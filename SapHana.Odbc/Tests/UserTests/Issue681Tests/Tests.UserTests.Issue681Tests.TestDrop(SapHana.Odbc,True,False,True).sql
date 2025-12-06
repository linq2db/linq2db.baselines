-- SapHana.Odbc SapHanaOdbc

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue681Table2"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue681Table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LINKED_DB"."TESTDB"."Issue681Table2"

