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

SELECT FIRST 1
	Octet_Length("t"."BinaryValue")
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = CAST(@BinaryValue AS BLOB)
WHERE
	"t".ID = 1

