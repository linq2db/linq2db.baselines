BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = BX'0102030405'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

