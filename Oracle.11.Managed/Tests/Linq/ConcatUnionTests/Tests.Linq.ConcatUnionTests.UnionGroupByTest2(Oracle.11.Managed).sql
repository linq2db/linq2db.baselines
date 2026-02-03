-- Oracle.11.Managed Oracle11

SELECT
	t2."year_1",
	t2."year_1",
	t2."int_1"
FROM
	(
		SELECT
			CAST(t1."SmallIntValue" AS Int) as "year_1",
			CAST(3 AS Int) as "int_1"
		FROM
			"LinqDataTypes" t1
	) t2
UNION
SELECT
	t4."month_1",
	t4."year_1",
	CAST(1 AS Int)
FROM
	(
		SELECT
			EXTRACT(MONTH FROM t3."DateTimeValue") as "month_1",
			EXTRACT(YEAR FROM t3."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" t3
	) t4
GROUP BY
	t4."month_1",
	t4."year_1"
UNION
SELECT
	EXTRACT(YEAR FROM t5."DateTimeValue"),
	EXTRACT(YEAR FROM t5."DateTimeValue"),
	CAST(2 AS Int)
FROM
	"LinqDataTypes" t5

