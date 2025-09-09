BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @dt Timestamp(16) -- DateTime
SET     @dt = TO_DATE('2010-12-14 05:00:07.42501', '%Y-%m-%d %H:%M:%S.%F5')

UPDATE
	LinqDataTypes t
SET
	DateTimeValue = @dt
WHERE
	t.ID = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @pdt Timestamp(16) -- DateTime
SET     @pdt = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')

UPDATE
	LinqDataTypes t
SET
	DateTimeValue = @pdt
WHERE
	t.ID = 1

