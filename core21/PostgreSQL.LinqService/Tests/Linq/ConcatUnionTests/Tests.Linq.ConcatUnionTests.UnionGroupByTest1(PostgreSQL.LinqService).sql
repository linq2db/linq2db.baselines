BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
					t1."Key_1" as month_1,
					t1."Key_2" as year_1,
					1 as int_1
				FROM
					(
						SELECT
							Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as "Key_1",
							Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "Key_2"
						FROM
							"LinqDataTypes" "selectParam"
					) t1
				GROUP BY
					t1."Key_1",
					t1."Key_2"
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
	t6.year_1,
	t6.year_1,
	t6.int_1
FROM
	(
		SELECT
			Cast(Floor(Extract(year from t5."DateTimeValue")) as int) as year_1,
			2 as int_1
		FROM
			"LinqDataTypes" t5
	) t6

