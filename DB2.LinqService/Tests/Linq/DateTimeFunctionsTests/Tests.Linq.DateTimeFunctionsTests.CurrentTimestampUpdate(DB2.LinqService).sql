BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BoolValue" = 1,
	"LinqDataTypes"."DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	"LinqDataTypes".ID = 100000

