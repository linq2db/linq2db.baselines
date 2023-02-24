BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = TIMESTAMP '1992-01-11 01:11:21.100000'
DECLARE @take Int32
SET     @take = 1

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = TIMESTAMP '1993-01-11 01:11:21.100000'
DECLARE @take Int32
SET     @take = 1

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime AND ROWNUM <= :take

