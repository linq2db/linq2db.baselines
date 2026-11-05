-- SapHana.Native SapHana
SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "LINKED_DB"."TESTDBNATIVE"."Issue681Table4"
(
	"Value"
)
VALUES
(
	:"Value"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

