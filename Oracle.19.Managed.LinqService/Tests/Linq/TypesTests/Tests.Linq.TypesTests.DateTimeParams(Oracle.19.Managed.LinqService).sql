BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = TIMESTAMP '1992-01-11 01:11:21.100000'

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = TIMESTAMP '1993-01-11 01:11:21.100000'

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime
FETCH NEXT 1 ROWS ONLY

