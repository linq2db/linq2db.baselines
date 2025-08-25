BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @dateTime Timestamp(16) -- DateTime
SET     @dateTime = TO_DATE('1992-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')

SELECT FIRST 1
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > @dateTime

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @dateTime Timestamp(16) -- DateTime
SET     @dateTime = TO_DATE('1993-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')

SELECT FIRST 1
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > @dateTime

