-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = {1,2,3,4,5}
DECLARE @ints Integer(4) -- Int32
SET     @ints = 1

UPDATE
	LinqDataTypes t
SET
	BinaryValue = @BinaryValue
WHERE
	t.ID = @ints

-- Informix.DB2 Informix
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = {5,4,3,2,1}
DECLARE @ints Integer(4) -- Int32
SET     @ints = 2

UPDATE
	LinqDataTypes t
SET
	BinaryValue = @BinaryValue
WHERE
	t.ID = @ints

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

