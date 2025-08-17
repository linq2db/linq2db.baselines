BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	avg(c_1.ChildID),
	AVG(c_1.ChildID),
	AVG(ALL c_1.ChildID),
	AVG(DISTINCT c_1.ChildID)
FROM
	Parent g_1
		INNER JOIN Child c_1 ON g_1.ParentID = c_1.ParentID
GROUP BY
	g_1.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	avgOrNull(t1.ParentID)
FROM
	Child t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	AVG(ALL t1.ParentID)
FROM
	Child t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	AVG(DISTINCT t1.ParentID)
FROM
	Child t1

