BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t2."month_1",
	t2."year_1",
	t2."int_1"
FROM
	(
		SELECT
			t1."month_1",
			t1."year_1",
			1 as "int_1"
		FROM
			(
				SELECT
					To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "month_1",
					To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "year_1"
				FROM
					"LinqDataTypes" selectParam
			) t1
		GROUP BY
			t1."month_1",
			t1."year_1"
	) t2
UNION
SELECT
	t3."SmallIntValue",
	t3."SmallIntValue",
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

