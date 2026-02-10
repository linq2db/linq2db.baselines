-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	g_1.ParentID + 1
FROM
	Child g_1
WHERE
	g_1.ParentID > 0

