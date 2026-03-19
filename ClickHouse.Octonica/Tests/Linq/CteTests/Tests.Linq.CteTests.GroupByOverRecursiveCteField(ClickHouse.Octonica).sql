-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		gc1.ChildID as ChildID,
		gc1.GrandChildID as ParentID,
		gc1.GrandChildID as GrandChildID
	FROM
		GrandChild gc1
	UNION ALL
	SELECT
		ct.ChildID as ChildID,
		ct.ParentID as ParentID,
		ct.ChildID + 1 as GrandChildID
	FROM
		GrandChild t1
			INNER JOIN Parent p ON p.ParentID = t1.ParentID
			INNER JOIN cte ct ON ct.ChildID = t1.ChildID
	WHERE
		ct.GrandChildID <= 10
)
SELECT
	m_1.Key_1,
	d.ChildID,
	d.ParentID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			Coalesce(t2.ParentID, -1) as Key_1
		FROM
			cte t2
	) m_1
		INNER JOIN cte d ON m_1.Key_1 = Coalesce(d.ParentID, -1)

-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		gc1.ChildID as ChildID,
		gc1.GrandChildID as ParentID,
		gc1.GrandChildID as GrandChildID
	FROM
		GrandChild gc1
	UNION ALL
	SELECT
		ct.ChildID as ChildID,
		ct.ParentID as ParentID,
		ct.ChildID + 1 as GrandChildID
	FROM
		GrandChild t1
			INNER JOIN Parent p ON p.ParentID = t1.ParentID
			INNER JOIN cte ct ON ct.ChildID = t1.ChildID
	WHERE
		ct.GrandChildID <= 10
)
SELECT DISTINCT
	Coalesce(t2.ParentID, -1)
FROM
	cte t2

