BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	YEAR(a_Types.DateTimeValue)
FROM
	Parent selectParam
		LEFT JOIN LinqDataTypes a_Types ON selectParam.ParentID = a_Types.ID
GROUP BY
	YEAR(a_Types.DateTimeValue)

