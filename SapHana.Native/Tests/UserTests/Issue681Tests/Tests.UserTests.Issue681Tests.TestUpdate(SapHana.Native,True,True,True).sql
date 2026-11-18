-- SapHana.Native SapHana
SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"LINKED_DB"."TESTDBNATIVE"."Issue681Table" "t1"
SET
	"Value" = :"Value"
WHERE
	"t1"."ID" = :"ID"

