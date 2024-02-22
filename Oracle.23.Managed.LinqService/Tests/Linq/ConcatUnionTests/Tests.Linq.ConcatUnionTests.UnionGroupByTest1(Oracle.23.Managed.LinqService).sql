BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
	Cast(t3."SmallIntValue" as Int),
	Cast(t3."SmallIntValue" as Int),
	3
FROM
	"LinqDataTypes" t3
UNION
SELECT
	To_Number(To_Char(t4."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t4."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t4

