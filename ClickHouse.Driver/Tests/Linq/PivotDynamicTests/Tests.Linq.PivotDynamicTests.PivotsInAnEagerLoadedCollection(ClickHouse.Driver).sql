-- ClickHouse.Driver ClickHouse
SELECT
	m_1.ParentID,
	d_1.`21`,
	d_1.`22`,
	d_1.`31`,
	d_1.`32`,
	d_1.`33`
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = 2 OR p.ParentID = 3
	) m_1
		INNER JOIN (
			SELECT
				sumOrNull(CASE
					WHEN d.ChildID = 21 THEN d.ChildID
					ELSE NULL
				END) as `21`,
				sumOrNull(CASE
					WHEN d.ChildID = 22 THEN d.ChildID
					ELSE NULL
				END) as `22`,
				sumOrNull(CASE
					WHEN d.ChildID = 31 THEN d.ChildID
					ELSE NULL
				END) as `31`,
				sumOrNull(CASE
					WHEN d.ChildID = 32 THEN d.ChildID
					ELSE NULL
				END) as `32`,
				sumOrNull(CASE
					WHEN d.ChildID = 33 THEN d.ChildID
					ELSE NULL
				END) as `33`,
				d.ParentID as ParentID
			FROM
				Child d
			GROUP BY
				d.ParentID
		) d_1 ON d_1.ParentID = m_1.ParentID

-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID = 2 OR p.ParentID = 3

