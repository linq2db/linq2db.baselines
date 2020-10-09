BeforeExecute
-- Firebird
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- Firebird

SELECT 
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

