BeforeExecute
-- Informix.DB2 Informix

SELECT
	Sum(t1.MoneyValue),
	Year(t1.Key_1),
	Month(t1.Key_1)
FROM
	(
		SELECT
			Mdy(Month(selectParam.DateTimeValue), 1, Year(selectParam.DateTimeValue)) as Key_1,
			selectParam.MoneyValue
		FROM
			LinqDataTypes selectParam
	) t1
GROUP BY
	t1.Key_1

