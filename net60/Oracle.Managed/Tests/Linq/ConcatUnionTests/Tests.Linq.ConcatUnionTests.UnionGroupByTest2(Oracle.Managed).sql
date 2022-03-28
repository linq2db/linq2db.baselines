BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."SmallIntValue",
	t1."SmallIntValue",
	3
FROM
	"LinqDataTypes" t1
UNION
SELECT
	t3."month_1",
	t3."year_1",
	t3."int_1"
FROM
	(
		SELECT
			t2."month_1",
			t2."year_1",
			1 as "int_1"
		FROM
			(
				SELECT
					To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "month_1",
					To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "year_1"
				FROM
					"LinqDataTypes" selectParam
			) t2
		GROUP BY
			t2."month_1",
			t2."year_1"
	) t3
UNION
SELECT
	To_Number(To_Char(t4."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t4."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t4

