BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Value_1
FROM
	(
		SELECT
			CASE
				WHEN p.ParentID % 2 = 0 THEN p.ParentID % 3 = 0
				WHEN p.ParentID % 4 = 0 THEN p.ParentID > 0
				ELSE p.ParentID < 5
			END as Value_1
		FROM
			Parent p
	) s
WHERE
	s.Value_1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

