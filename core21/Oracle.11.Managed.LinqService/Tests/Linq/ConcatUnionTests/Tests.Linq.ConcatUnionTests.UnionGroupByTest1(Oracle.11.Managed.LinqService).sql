BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t4."month_1",
	t4."year_1",
	t4."int_1"
FROM
	(
		SELECT
			t2."month_1",
			t2."year_1",
			t2."int_1"
		FROM
			(
				SELECT
					t1."Key_1" as "month_1",
					t1."Key_2" as "year_1",
					1 as "int_1"
				FROM
					(
						SELECT
							To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "Key_1",
							To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "Key_2"
						FROM
							"LinqDataTypes" selectParam
					) t1
				GROUP BY
					t1."Key_1",
					t1."Key_2"
			) t2
		UNION
		SELECT
			t3."SmallIntValue" as "month_1",
			t3."SmallIntValue" as "year_1",
			3 as "int_1"
		FROM
			"LinqDataTypes" t3
	) t4
UNION
SELECT
	t6."year_1",
	t6."year_1",
	t6."int_1"
FROM
	(
		SELECT
			To_Number(To_Char(t5."DateTimeValue", 'YYYY')) as "year_1",
			2 as "int_1"
		FROM
			"LinqDataTypes" t5
	) t6

