BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	t1.ParentID,
	t1.ChildID,
	t2.ParentID,
	t2.ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				a_Children.ParentID as ParentID,
				a_Children.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID) as rn
			FROM
				Child a_Children
		) t1 ON p.ParentID = t1.ParentID AND t1.rn <= 1
		LEFT JOIN (
			SELECT
				a_Children_1.ParentID as ParentID,
				a_Children_1.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children_1.ParentID ORDER BY a_Children_1.ChildID) as rn
			FROM
				Child a_Children_1
		) t2 ON p.ParentID = t2.ParentID AND t2.rn <= 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID
		FROM
			Parent t1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

