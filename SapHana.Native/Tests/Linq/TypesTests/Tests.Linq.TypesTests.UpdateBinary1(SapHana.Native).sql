-- SapHana.Native SapHana
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = x'0102030405'

UPDATE
	"LinqDataTypes" "t"
SET
	"BinaryValue" = :"BinaryValue"
WHERE
	"t"."ID" = 1

-- SapHana.Native SapHana
SELECT
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1

