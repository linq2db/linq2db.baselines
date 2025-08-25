BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = BX'0102030405'

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = @BinaryValue
WHERE
	"t".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

