BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.ID, 
	t.MoneyValue, 
	t.DateTimeValue, 
	t.DateTimeValue2, 
	t.BoolValue, 
	t.GuidValue, 
	t.SmallIntValue, 
	t.IntValue, 
	t.BigIntValue, 
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @dt TimeStamp -- DateTime
SET     @dt = TO_TIMESTAMP('2010-12-14 06:00:07.425014', 'YYYY-MM-DD HH24:MI:SS.FF6')

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.DateTimeValue = :dt
WHERE
	LinqDataTypes.ID = 1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.ID, 
	t.MoneyValue, 
	t.DateTimeValue, 
	t.DateTimeValue2, 
	t.BoolValue, 
	t.GuidValue, 
	t.SmallIntValue, 
	t.IntValue, 
	t.BigIntValue, 
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @pdt TimeStamp -- DateTime
SET     @pdt = TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6')

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.DateTimeValue = :pdt
WHERE
	LinqDataTypes.ID = 1

