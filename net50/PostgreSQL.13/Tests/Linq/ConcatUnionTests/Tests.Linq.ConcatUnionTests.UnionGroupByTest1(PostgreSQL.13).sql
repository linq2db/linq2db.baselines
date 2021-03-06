﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t4.month_1,
	t4.year_1,
	t4.int_1
FROM
	(
		SELECT
			t2.month_1,
			t2.year_1,
			t2.int_1
		FROM
			(
				SELECT
					t1.month_1,
					t1.year_1,
					1 as int_1
				FROM
					(
						SELECT
							Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as month_1,
							Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as year_1
						FROM
							"LinqDataTypes" "selectParam"
					) t1
				GROUP BY
					t1.month_1,
					t1.year_1
			) t2
		UNION
		SELECT
			t3."SmallIntValue" as month_1,
			t3."SmallIntValue" as year_1,
			3 as int_1
		FROM
			"LinqDataTypes" t3
	) t4
UNION
SELECT
	Cast(Floor(Extract(year from t5."DateTimeValue")) as int),
	Cast(Floor(Extract(year from t5."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" t5

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

