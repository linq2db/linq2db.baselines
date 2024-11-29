BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Value_1
FROM
	(
		SELECT
			CASE
				WHEN p.ParentID % 2 = 0 THEN CASE
					WHEN p.ParentID % 3 = 0 THEN true
					ELSE false
				END
				WHEN p.ParentID % 4 = 0 THEN CASE
					WHEN p.ParentID > 0 THEN true
					ELSE false
				END
				ELSE CASE
					WHEN p.ParentID < 5 THEN true
					ELSE false
				END
			END as Value_1
		FROM
			Parent p
	) s
WHERE
	s.Value_1 = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

