﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	CASE
		WHEN t."MoneyValue" <> 4.5 THEN 1
		ELSE 0
	END = 0

