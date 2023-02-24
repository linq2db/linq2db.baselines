BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Date_1,
	Count(*)
FROM
	(
		SELECT
			toDate32(selectParam.DateTimeValue) as Date_1
		FROM
			LinqDataTypes selectParam
				INNER JOIN Parent p ON selectParam.ID = p.ParentID
	) t1
GROUP BY
	t1.Date_1

