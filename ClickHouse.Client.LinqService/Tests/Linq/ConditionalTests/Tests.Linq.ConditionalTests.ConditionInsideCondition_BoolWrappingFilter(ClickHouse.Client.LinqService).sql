BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s_1.Value_1
FROM
	(
		SELECT
			CASE
				WHEN s.ParentID % 2 = 0 THEN CASE
					WHEN s.ParentID % 3 = 0 THEN true
					ELSE false
				END
				WHEN s.ParentID % 4 = 0 THEN CASE
					WHEN s.ParentID > 0 THEN true
					ELSE false
				END
				ELSE CASE
					WHEN s.ParentID < 5 THEN true
					ELSE false
				END
			END as Value_1
		FROM
			Parent s
	) s_1
WHERE
	s_1.Value_1 = true

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

