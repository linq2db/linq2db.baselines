-- SapHana.Native SapHana
SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue681Table2"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "Issue681Table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DROP TABLE "LINKED_DB"."TESTDBNATIVE"."Issue681Table2"

