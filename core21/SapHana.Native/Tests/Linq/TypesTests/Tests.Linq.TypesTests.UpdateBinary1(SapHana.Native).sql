BeforeExecute
-- SapHana.Native SapHana
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = x'0102030405'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = :"BinaryValue"
WHERE
	"LinqDataTypes"."ID" = 1

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."BinaryValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1

