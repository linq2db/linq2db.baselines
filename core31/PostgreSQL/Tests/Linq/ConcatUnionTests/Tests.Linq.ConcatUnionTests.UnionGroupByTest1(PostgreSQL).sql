BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t5.month_1,
	t5.year_1,
	t5.int_1
FROM
	(
		SELECT
			t2.month_1,
			t2.year_1,
			t2.c1 as int_1
		FROM
			(
				SELECT
					t1."Key_1" as month_1,
					t1."Key_2" as year_1,
					1 as c1
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
			t4.year_1 as month_1,
			t4.year_1,
			t4.c1 as int_1
		FROM
			(
				SELECT
					t3."SmallIntValue" as year_1,
					3 as c1
				FROM
					"LinqDataTypes" t3
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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

