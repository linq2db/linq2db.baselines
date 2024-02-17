BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t2."Month_1",
	t2."Year_1",
	1
FROM
	(
		SELECT
			To_Number(To_Char(t1."DateTimeValue", 'MM')) as "Month_1",
			To_Number(To_Char(t1."DateTimeValue", 'YYYY')) as "Year_1"
		FROM
			"LinqDataTypes" t1
	) t2
GROUP BY
	t2."Month_1",
	t2."Year_1"
UNION
SELECT
	t4."month_1",
	t4."month_1",
	t4."int_1"
FROM
	(
		SELECT
			Cast(t3."SmallIntValue" as Int) as "month_1",
			3 as "int_1"
		FROM
			"LinqDataTypes" t3
	) t4
UNION
SELECT
	t6."month_1",
	t6."month_1",
	t6."int_1"
FROM
	(
		SELECT
			To_Number(To_Char(t5."DateTimeValue", 'YYYY')) as "month_1",
			2 as "int_1"
		FROM
			"LinqDataTypes" t5
	) t6

