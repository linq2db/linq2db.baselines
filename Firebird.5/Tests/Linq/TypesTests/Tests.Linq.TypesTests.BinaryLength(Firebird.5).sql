BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Octet_Length("t"."BinaryValue")
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BinaryValue Binary
SET     @BinaryValue = NULL

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = 1

