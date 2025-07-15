BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1000
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 100

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	@ID,
	@MoneyValue,
	@SmallIntValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

UPDATE
	LinqDataTypes t
SET
	MoneyValue = 2000,
	SmallIntValue = 200
WHERE
	t.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

SELECT FIRST 2
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
	t.ID = @ID

