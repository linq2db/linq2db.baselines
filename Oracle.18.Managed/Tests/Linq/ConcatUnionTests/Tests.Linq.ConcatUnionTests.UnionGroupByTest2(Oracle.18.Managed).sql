-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CAST(t1."SmallIntValue" AS Int),
	CAST(t1."SmallIntValue" AS Int),
	CAST(3 AS Int)
FROM
	"LinqDataTypes" t1
UNION
SELECT
	t3."month_1",
	t3."year_1",
	CAST(1 AS Int)
FROM
	(
		SELECT DISTINCT
			EXTRACT(MONTH FROM t2."DateTimeValue") as "month_1",
			EXTRACT(YEAR FROM t2."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" t2
	) t3
UNION
SELECT
	EXTRACT(YEAR FROM t4."DateTimeValue"),
	EXTRACT(YEAR FROM t4."DateTimeValue"),
	CAST(2 AS Int)
FROM
	"LinqDataTypes" t4

