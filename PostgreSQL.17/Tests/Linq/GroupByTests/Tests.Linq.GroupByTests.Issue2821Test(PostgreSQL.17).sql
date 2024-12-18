﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @currentDate Timestamp -- DateTime2
SET     @currentDate = '2020-02-29 17:54:55.123'::timestamp
DECLARE @currentDate_1 Timestamp -- DateTime2
SET     @currentDate_1 = '2020-02-29 17:54:55.123'::timestamp

SELECT
	o."ID",
	o."MoneyValue",
	o."DateTimeValue",
	o."DateTimeValue2",
	o."BoolValue",
	o."GuidValue",
	o."SmallIntValue",
	o."IntValue",
	o."BigIntValue",
	o."StringValue"
FROM
	"LinqDataTypes" o
		INNER JOIN (
			SELECT
				t."ID",
				MAX(t."DateTimeValue2") as c1
			FROM
				"LinqDataTypes" t
			WHERE
				Coalesce(t."DateTimeValue", t."DateTimeValue2") <= :currentDate AND
				Coalesce(t."DateTimeValue", t."DateTimeValue2") IS NOT NULL AND
				(t."DateTimeValue2" IS NULL OR t."DateTimeValue2" >= :currentDate_1 AND t."DateTimeValue2" IS NOT NULL)
			GROUP BY
				t."ID"
		) t1 ON o."ID" = t1."ID" AND (o."DateTimeValue2" = t1.c1 AND o."DateTimeValue2" IS NOT NULL AND t1.c1 IS NOT NULL OR o."DateTimeValue2" IS NULL AND t1.c1 IS NULL)
WHERE
	Coalesce(o."DateTimeValue", o."DateTimeValue2") <= :currentDate AND
	Coalesce(o."DateTimeValue", o."DateTimeValue2") IS NOT NULL AND
	(o."DateTimeValue2" IS NULL OR o."DateTimeValue2" >= :currentDate_1 AND o."DateTimeValue2" IS NOT NULL)
ORDER BY
	o."DateTimeValue2"

