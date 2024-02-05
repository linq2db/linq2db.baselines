BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.SmallIntValue,
	t1.SmallIntValue,
	3
FROM
	LinqDataTypes t1
UNION
SELECT
	t2.month_1,
	t2.year_1,
	1
FROM
	(
		SELECT
			Month(selectParam.DateTimeValue) as month_1,
			Year(selectParam.DateTimeValue) as year_1
		FROM
			LinqDataTypes selectParam
	) t2
GROUP BY
	t2.month_1,
	t2.year_1
UNION
SELECT
	Year(t3.DateTimeValue),
	Year(t3.DateTimeValue),
	2
FROM
	LinqDataTypes t3

