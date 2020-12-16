BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t4."year_1",
	t4."year_2",
	t4."int_1"
FROM
	(
		SELECT
			t1."SmallIntValue" as "year_1",
			t1."SmallIntValue" as "year_2",
			3 as "int_1"
		FROM
			"LinqDataTypes" t1
		UNION
		SELECT
			t3."month_1" as "year_1",
			t3."year_1" as "year_2",
			t3."int_1"
		FROM
			(
				SELECT
					t2."Key_1" as "month_1",
					t2."Key_2" as "year_1",
					1 as "int_1"
				FROM
					(
						SELECT
							To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "Key_1",
							To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "Key_2"
						FROM
							"LinqDataTypes" selectParam
					) t2
				GROUP BY
					t2."Key_1",
					t2."Key_2"
			) t3
	) t4
UNION
SELECT
	To_Number(To_Char(t5."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t5."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t5

