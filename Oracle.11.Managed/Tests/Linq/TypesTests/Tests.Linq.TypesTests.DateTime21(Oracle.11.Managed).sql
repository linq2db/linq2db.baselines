BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @dt TimeStamp -- DateTime
SET     @dt = TIMESTAMP '2010-12-14 06:00:07.425014'

UPDATE
	"LinqDataTypes" t
SET
	"DateTimeValue" = :dt
WHERE
	t.ID = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @pdt TimeStamp -- DateTime
SET     @pdt = TIMESTAMP '2001-01-11 01:11:21.100000'

UPDATE
	"LinqDataTypes" t
SET
	"DateTimeValue" = :pdt
WHERE
	t.ID = 1

