﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."MoneyValue",
	r."DateTimeValue",
	r."BoolValue",
	r."GuidValue",
	r."BinaryValue",
	r."SmallIntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."BoolValue" = 1

