BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."month_1",
	t2."year_1",
	CAST(1 AS Int)
FROM
	(
		SELECT
			EXTRACT(MONTH FROM t1."DateTimeValue") as "month_1",
			EXTRACT(YEAR FROM t1."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" t1
	) t2
GROUP BY
	t2."month_1",
	t2."year_1"
UNION
SELECT
	CAST(t3."SmallIntValue" AS Int),
	CAST(t3."SmallIntValue" AS Int),
	CAST(3 AS Int)
FROM
	"LinqDataTypes" t3
UNION
SELECT
	EXTRACT(YEAR FROM t4."DateTimeValue"),
	EXTRACT(YEAR FROM t4."DateTimeValue"),
	CAST(2 AS Int)
FROM
	"LinqDataTypes" t4

