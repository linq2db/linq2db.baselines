BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t5.year_1,
	t5.year_2,
	t5.int_1
FROM
	(
		SELECT
			t2.year_1,
			t2.year_1 as year_2,
			t2.c1 as int_1
		FROM
			(
				SELECT
					t1."SmallIntValue" as year_1,
					3 as c1
				FROM
					"LinqDataTypes" t1
			) t2
		UNION
		SELECT
			t4.month_1 as year_1,
			t4.year_1 as year_2,
			t4.c1 as int_1
		FROM
			(
				SELECT
					t3."Key_1" as month_1,
					t3."Key_2" as year_1,
					1 as c1
				FROM
					(
						SELECT
							Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as "Key_1",
							Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "Key_2"
						FROM
							"LinqDataTypes" "selectParam"
					) t3
				GROUP BY
					t3."Key_1",
					t3."Key_2"
			) t4
	) t5
UNION
SELECT
	t7.year_1,
	t7.year_1,
	t7.c1
FROM
	(
		SELECT
			Cast(Floor(Extract(year from t6."DateTimeValue")) as int) as year_1,
			2 as c1
		FROM
			"LinqDataTypes" t6
	) t7

