BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	data_1.ParentID,
	data_1.ChildID,
	maxOrNull(data_1.ChildID)
FROM
	Child data_1
GROUP BY
	data_1.ParentID,
	data_1.ChildID

