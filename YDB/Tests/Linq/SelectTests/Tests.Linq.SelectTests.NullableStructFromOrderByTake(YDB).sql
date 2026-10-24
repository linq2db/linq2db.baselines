-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	m_1.ParentID as ParentID,
	m_1.Value1 as Value1
FROM
	Parent m_1
ORDER BY
	m_1.ParentID
LIMIT $take

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

