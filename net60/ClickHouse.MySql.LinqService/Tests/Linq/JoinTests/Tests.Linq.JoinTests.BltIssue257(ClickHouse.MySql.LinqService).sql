BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(selectParam.DateTimeValue),
	Count(*)
FROM
	LinqDataTypes selectParam
		INNER JOIN Parent p ON selectParam.ID = p.ParentID
GROUP BY
	toDate32(selectParam.DateTimeValue)

