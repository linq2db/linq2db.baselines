BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t2."Month_1",
	t2."Year_1",
	1
FROM
	(
		SELECT
			EXTRACT(MONTH FROM t1."DateTimeValue") as "Month_1",
			EXTRACT(YEAR FROM t1."DateTimeValue") as "Year_1"
		FROM
			"LinqDataTypes" t1
	) t2
GROUP BY
	t2."Month_1",
	t2."Year_1"
UNION
SELECT
	CAST(t3."SmallIntValue" AS Int),
	CAST(t3."SmallIntValue" AS Int),
	3
FROM
	"LinqDataTypes" t3
UNION
SELECT
	EXTRACT(YEAR FROM t4."DateTimeValue"),
	EXTRACT(YEAR FROM t4."DateTimeValue"),
	2
FROM
	"LinqDataTypes" t4

