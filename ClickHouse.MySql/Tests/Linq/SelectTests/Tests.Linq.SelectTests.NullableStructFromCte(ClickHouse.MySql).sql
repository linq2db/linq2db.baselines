-- ClickHouse.MySql ClickHouse
WITH CTE_1 AS
(
	SELECT
		p.ParentID as ParentID,
		p.Value1 as Value_1
	FROM
		Parent p
)
SELECT
	m_1.ParentID,
	m_1.Value_1
FROM
	CTE_1 m_1

