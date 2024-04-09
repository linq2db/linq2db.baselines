BeforeExecute
-- Firebird3 Firebird
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = CAST(@BinaryValue AS BLOB)
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

