BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @arr VarBinary(4) -- Binary
SET     @arr = {1,2,3,4}

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	1001,
	't'::BOOLEAN,
	@arr
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

