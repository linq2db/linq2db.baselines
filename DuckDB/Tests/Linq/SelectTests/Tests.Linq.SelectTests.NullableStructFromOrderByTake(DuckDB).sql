-- DuckDB
DECLARE $take INTEGER -- Int32
SET     $take = 3

SELECT
	m_1.ParentID,
	m_1.Value1
FROM
	Parent m_1
ORDER BY
	m_1.ParentID
LIMIT $take

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

