BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toInt32(0) as projection__set_id__,
	t1.ParentID,
	t1.ParentID as ParentID_1,
	t1.ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				a_Children.ParentID as ParentID,
				a_Children.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ParentID) as rn
			FROM
				Child a_Children
		) t1 ON p.ParentID = t1.ParentID AND t1.rn <= 1
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	toInt32(1) as projection__set_id__,
	toInt32(NULL) as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ChildID
FROM
	Parent p_1
WHERE
	p_1.ParentID <> 1

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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

