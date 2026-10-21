-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		p.ParentID as ParentID,
		p.Value1 as Info_Value_Value
	FROM
		Parent p
)
SELECT
	m_1.ParentID,
	m_1.Info_Value_Value
FROM
	CTE_1 m_1

