BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t4.year_1,
	t4.year_2,
	t4.int_1
FROM
	(
		SELECT
			t1."SmallIntValue" as year_1,
			t1."SmallIntValue" as year_2,
			3 as int_1
		FROM
			"LinqDataTypes" t1
		UNION
		SELECT
			t3.month_1 as year_1,
			t3.year_1 as year_2,
			t3.int_1
		FROM
			(
				SELECT
					t2."Key_1" as month_1,
					t2."Key_2" as year_1,
					1 as int_1
				FROM
					(
						SELECT
							Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as "Key_1",
							Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "Key_2"
						FROM
							"LinqDataTypes" "selectParam"
					) t2
				GROUP BY
					t2."Key_1",
					t2."Key_2"
			) t3
	) t4
UNION
SELECT
	Cast(Floor(Extract(year from t5."DateTimeValue")) as int),
	Cast(Floor(Extract(year from t5."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" t5

