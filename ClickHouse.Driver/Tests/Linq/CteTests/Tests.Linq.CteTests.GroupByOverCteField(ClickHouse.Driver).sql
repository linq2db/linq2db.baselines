-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		gc1.ParentID as ParentID,
		gc1.ChildID as ChildID,
		gc1.GrandChildID as GrandChildID
	FROM
		GrandChild gc1
)
SELECT
	m_1.Key_1,
	d.ChildID,
	d.ParentID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			Coalesce(t1.ParentID, -1) as Key_1
		FROM
			CTE_1 t1
	) m_1
		INNER JOIN CTE_1 d ON m_1.Key_1 = Coalesce(d.ParentID, -1)

-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		gc1.ParentID as ParentID
	FROM
		GrandChild gc1
)
SELECT DISTINCT
	Coalesce(t1.ParentID, -1)
FROM
	CTE_1 t1

