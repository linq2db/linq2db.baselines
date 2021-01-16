BeforeExecute
-- Firebird
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0102030405'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = @ID

BeforeExecute
-- Firebird
DECLARE @BinaryValue Binary(5)
SET     @BinaryValue = X'0504030201'
DECLARE @ID Integer -- Int32
SET     @ID = 2

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BinaryValue" = @BinaryValue
WHERE
	"LinqDataTypes".ID = @ID

