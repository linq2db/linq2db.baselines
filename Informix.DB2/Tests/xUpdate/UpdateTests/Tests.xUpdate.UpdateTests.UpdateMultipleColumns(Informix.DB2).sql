BeforeExecute
-- Informix.DB2 Informix

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	SmallIntValue
)
VALUES
(
	1001,
	1000,
	100
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

