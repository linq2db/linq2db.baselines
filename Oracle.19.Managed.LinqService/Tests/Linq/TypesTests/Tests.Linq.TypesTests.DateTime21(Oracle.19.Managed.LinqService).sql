﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

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
	t.ID = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @dt TimeStamp -- DateTime
SET     @dt = TIMESTAMP '2010-12-14 06:00:07.425014'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = :dt
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

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
	t.ID = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @pdt TimeStamp -- DateTime
SET     @pdt = TIMESTAMP '2001-01-11 01:11:21.100000'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = :pdt
WHERE
	"LinqDataTypes".ID = 1

