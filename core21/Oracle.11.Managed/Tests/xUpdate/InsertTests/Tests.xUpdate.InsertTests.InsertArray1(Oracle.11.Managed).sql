BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO LinqDataTypes
(
	ID,
	BoolValue,
	BinaryValue
)
VALUES
(
	1001,
	1,
	NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT 
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
	t.ID = 1001 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

