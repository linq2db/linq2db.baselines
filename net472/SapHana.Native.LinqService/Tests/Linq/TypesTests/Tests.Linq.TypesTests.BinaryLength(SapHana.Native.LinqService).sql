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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	Length("t"."BinaryValue")
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = :"BinaryValue"
WHERE
	"LinqDataTypes"."ID" = 1

