﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value_1 Int64
SET     @value_1 = 0

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
	t."BigIntValue" = :value_1

