BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = TO_TIMESTAMP('1992-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6')
DECLARE @take Int32
SET     @take = 1

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > :dateTime
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = TO_TIMESTAMP('1993-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6')
DECLARE @take Int32
SET     @take = 1

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > :dateTime
FETCH NEXT :take ROWS ONLY

