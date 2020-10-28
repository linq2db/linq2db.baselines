BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = System.Byte[]
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 1

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = @BinaryValue
WHERE
	LinqDataTypes.ID = @p1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = System.Byte[]
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 2

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.BinaryValue = @BinaryValue
WHERE
	LinqDataTypes.ID = @p1

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

