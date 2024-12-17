BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	@ID,
	100,
	200
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	LinqDataTypes t
SET
	SmallIntValue = t.MoneyValue::SmallInt,
	MoneyValue = t.SmallIntValue::Decimal
WHERE
	t.ID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

UPDATE
	LinqDataTypes t
SET
	SmallIntValue = t.MoneyValue::SmallInt,
	MoneyValue = t.SmallIntValue::Decimal
WHERE
	t.ID = @id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

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
	t.ID = @id

