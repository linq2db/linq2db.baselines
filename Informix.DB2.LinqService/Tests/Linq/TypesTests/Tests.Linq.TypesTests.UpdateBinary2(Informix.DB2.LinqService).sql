BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = {1,2,3,4,5}
DECLARE @p Integer(4) -- Int32
SET     @p = 1

UPDATE
	LinqDataTypes t
SET
	BinaryValue = @BinaryValue
WHERE
	t.ID = @p

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = {5,4,3,2,1}
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	LinqDataTypes t
SET
	BinaryValue = @BinaryValue
WHERE
	t.ID = @p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID IN (1, 2)

