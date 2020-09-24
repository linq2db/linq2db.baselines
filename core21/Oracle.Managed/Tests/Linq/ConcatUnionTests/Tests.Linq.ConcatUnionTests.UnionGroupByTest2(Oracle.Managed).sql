BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t3.year_1,
	t3.year_2,
	t3.int_1
FROM
	(
		SELECT
			t1.SmallIntValue as year_1,
			t1.SmallIntValue as year_2,
			3 as int_1
		FROM
			LinqDataTypes t1
		UNION
		SELECT
			t2.Key_1 as year_1,
			t2.Key_2 as year_2,
			1 as int_1
		FROM
			(
				SELECT
					To_Number(To_Char(selectParam.DateTimeValue, 'MM')) as Key_1,
					To_Number(To_Char(selectParam.DateTimeValue, 'YYYY')) as Key_2
				FROM
					LinqDataTypes selectParam
			) t2
		GROUP BY
			t2.Key_1,
			t2.Key_2
	) t3
UNION
SELECT
	t5.year_1,
	t5.year_1,
	t5.int_1
FROM
	(
		SELECT
			To_Number(To_Char(t4.DateTimeValue, 'YYYY')) as year_1,
			2 as int_1
		FROM
			LinqDataTypes t4
	) t5

