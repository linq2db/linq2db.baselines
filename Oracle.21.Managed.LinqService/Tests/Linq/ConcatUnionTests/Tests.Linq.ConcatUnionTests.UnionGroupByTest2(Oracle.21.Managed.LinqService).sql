BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t2."month_1",
	t2."month_1",
	t2."int_1"
FROM
	(
		SELECT
			CAST(t1."SmallIntValue" AS Int) as "month_1",
			3 as "int_1"
		FROM
			"LinqDataTypes" t1
	) t2
UNION
SELECT
	t4."Month_1",
	t4."Year_1",
	1
FROM
	(
		SELECT
			EXTRACT(MONTH FROM t3."DateTimeValue") as "Month_1",
			EXTRACT(YEAR FROM t3."DateTimeValue") as "Year_1"
		FROM
			"LinqDataTypes" t3
	) t4
GROUP BY
	t4."Month_1",
	t4."Year_1"
UNION
SELECT
	EXTRACT(YEAR FROM t5."DateTimeValue"),
	EXTRACT(YEAR FROM t5."DateTimeValue"),
	2
FROM
	"LinqDataTypes" t5

