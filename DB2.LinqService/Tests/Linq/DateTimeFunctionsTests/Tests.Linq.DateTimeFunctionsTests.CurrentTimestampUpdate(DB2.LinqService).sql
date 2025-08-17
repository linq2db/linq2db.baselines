BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

UPDATE
	"LinqDataTypes" "p"
SET
	"BoolValue" = 1,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"p".ID = 100000

