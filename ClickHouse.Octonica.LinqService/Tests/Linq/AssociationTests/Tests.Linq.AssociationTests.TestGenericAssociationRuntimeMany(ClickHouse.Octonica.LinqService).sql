BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ParentID,
	t.Value1,
	m_1.ParentID,
	m_1.ChildID
FROM
	Parent t
		INNER JOIN Child m_1 ON t.ParentID = m_1.ParentID AND m_1.ChildID > toInt32(1)
WHERE
	t.ParentID IN (toInt32(1), toInt32(5))
ORDER BY
	t.ParentID

