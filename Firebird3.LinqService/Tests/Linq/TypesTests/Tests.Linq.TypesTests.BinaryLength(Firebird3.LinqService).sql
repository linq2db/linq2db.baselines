BeforeExecute
-- Firebird3 Firebird
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
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
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = 1

