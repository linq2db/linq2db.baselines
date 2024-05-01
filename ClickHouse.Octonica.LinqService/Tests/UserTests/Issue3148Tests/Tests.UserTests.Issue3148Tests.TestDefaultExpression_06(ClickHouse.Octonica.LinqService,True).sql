BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	d.ParentID <> 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_GrandChildren.ParentID,
	a_GrandChildren.ChildID,
	a_GrandChildren.GrandChildID
FROM
	GrandChild a_GrandChildren
WHERE
	0 = a_GrandChildren.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID
WHERE
	d.ParentID <> 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_GrandChildren.ParentID,
	a_GrandChildren.ChildID,
	a_GrandChildren.GrandChildID
FROM
	GrandChild a_GrandChildren
WHERE
	0 = a_GrandChildren.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

