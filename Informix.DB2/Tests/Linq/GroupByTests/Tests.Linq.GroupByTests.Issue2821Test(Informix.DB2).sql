﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @currentDate Timestamp(16) -- DateTime
SET     @currentDate = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @currentDate_1 Timestamp(16) -- DateTime
SET     @currentDate_1 = TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')

SELECT
	o.ID,
	o.MoneyValue,
	o.DateTimeValue,
	o.DateTimeValue2,
	o.BoolValue,
	o.GuidValue,
	o.SmallIntValue,
	o.IntValue,
	o.BigIntValue,
	o.StringValue
FROM
	LinqDataTypes o
		INNER JOIN (
			SELECT
				t.ID,
				MAX(t.DateTimeValue2) as c1
			FROM
				LinqDataTypes t
			WHERE
				Nvl(t.DateTimeValue, t.DateTimeValue2) <= @currentDate AND
				(t.DateTimeValue2 IS NULL OR t.DateTimeValue2 >= @currentDate_1)
			GROUP BY
				t.ID
		) t1 ON o.ID = t1.ID AND (o.DateTimeValue2 = t1.c1 OR o.DateTimeValue2 IS NULL AND t1.c1 IS NULL)
WHERE
	Nvl(o.DateTimeValue, o.DateTimeValue2) <= @currentDate AND
	(o.DateTimeValue2 IS NULL OR o.DateTimeValue2 >= @currentDate_1)
ORDER BY
	o.DateTimeValue2

