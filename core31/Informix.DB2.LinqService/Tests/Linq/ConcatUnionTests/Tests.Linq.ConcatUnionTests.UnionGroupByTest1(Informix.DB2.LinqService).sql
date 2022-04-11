BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.month_1,
	t2.year_1,
	t2.int_1
FROM
	(
		SELECT
			t1.month_1,
			t1.year_1,
			1 as int_1
		FROM
			(
				SELECT
					Month(selectParam.DateTimeValue) as month_1,
					Year(selectParam.DateTimeValue) as year_1
				FROM
					LinqDataTypes selectParam
			) t1
		GROUP BY
			t1.month_1,
			t1.year_1
	) t2
UNION
SELECT
	t3.SmallIntValue,
	t3.SmallIntValue,
	3
FROM
	LinqDataTypes t3
UNION
SELECT
	Year(t4.DateTimeValue),
	Year(t4.DateTimeValue),
	2
FROM
	LinqDataTypes t4

