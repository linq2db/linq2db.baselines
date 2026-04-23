-- SapHana.Odbc SapHanaOdbc

SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE"Issue681Table2"';
END

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue681Table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TESTDB"."Issue681Table2"

