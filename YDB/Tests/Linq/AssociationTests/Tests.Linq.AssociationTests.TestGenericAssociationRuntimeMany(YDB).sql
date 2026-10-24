-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5

SELECT
	t.ParentID as ParentID,
	t.Value1 as Value1,
	m_1.ParentID as ParentID_1,
	m_1.ChildID as ChildID
FROM
	Parent t
		INNER JOIN Child m_1 ON t.ParentID = m_1.ParentID
WHERE
	m_1.ChildID > 1 AND t.ParentID IN ($Ids0_1, $Ids0_2)
ORDER BY
	t.ParentID

