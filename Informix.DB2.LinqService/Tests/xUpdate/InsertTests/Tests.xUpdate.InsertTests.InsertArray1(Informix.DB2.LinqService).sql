BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID > 1000

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
	NULL
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

