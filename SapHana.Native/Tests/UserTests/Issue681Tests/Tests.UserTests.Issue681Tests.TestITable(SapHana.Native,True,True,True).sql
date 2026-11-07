-- SapHana.Native SapHana
SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"LINKED_DB"."TESTDBNATIVE"."Issue681Table" "t1"

