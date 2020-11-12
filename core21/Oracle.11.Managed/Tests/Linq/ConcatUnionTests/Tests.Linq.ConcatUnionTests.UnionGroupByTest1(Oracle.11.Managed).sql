BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t4.month_1,
	t4.year_1,
	t4.int_1
FROM
	(
		SELECT
			t2.month_1,
			t2.year_1,
			t2.int_1
		FROM
			(
				SELECT
					t1.Key_1 as month_1,
					t1.Key_2 as year_1,
					1 as int_1
				FROM
					(
						SELECT
							To_Number(To_Char(selectParam.DateTimeValue, 'MM')) as Key_1,
							To_Number(To_Char(selectParam.DateTimeValue, 'YYYY')) as Key_2
						FROM
							LinqDataTypes selectParam
					) t1
				GROUP BY
					t1.Key_1,
					t1.Key_2
			) t2
		UNION
		SELECT
			t3.SmallIntValue as month_1,
			t3.SmallIntValue as year_1,
			3 as int_1
		FROM
			LinqDataTypes t3
	) t4
UNION
SELECT
	To_Number(To_Char(t5.DateTimeValue, 'YYYY')),
	To_Number(To_Char(t5.DateTimeValue, 'YYYY')),
	2
FROM
	LinqDataTypes t5

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

