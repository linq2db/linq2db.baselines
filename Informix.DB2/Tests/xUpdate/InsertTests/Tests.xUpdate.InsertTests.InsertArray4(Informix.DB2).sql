-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @GuidValue Char(36) -- StringFixedLength
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue VarBinary(4) -- Binary
SET     @BinaryValue = {1,2,3,4}
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 0

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	BoolValue,
	GuidValue,
	BinaryValue,
	SmallIntValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1001

-- Informix.DB2 Informix

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

