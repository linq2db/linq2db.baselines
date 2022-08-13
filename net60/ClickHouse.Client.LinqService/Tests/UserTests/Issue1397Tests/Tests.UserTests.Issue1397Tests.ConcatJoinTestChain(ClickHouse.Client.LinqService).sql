BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.ParentID,
	m_1.Value1
FROM
	Parent m_1
		INNER JOIN (
			SELECT
				t.ParentID as ParentID
			FROM
				Parent t
			WHERE
				t.ParentID = toInt32(1)
			UNION ALL
			SELECT
				t_1.ParentID as ParentID
			FROM
				Parent t_1
			WHERE
				t_1.ParentID = toInt32(2)
		) t1 ON m_1.ParentID = t1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.ParentID,
	m_1.Value1
FROM
	Parent m_1,
	(
		SELECT
			t.ParentID as ParentID
		FROM
			Parent t
		WHERE
			t.ParentID = toInt32(1)
		UNION ALL
		SELECT
			t_1.ParentID as ParentID
		FROM
			Parent t_1
		WHERE
			t_1.ParentID = toInt32(2)
	) t1
WHERE
	t1.ParentID = m_1.ParentID

