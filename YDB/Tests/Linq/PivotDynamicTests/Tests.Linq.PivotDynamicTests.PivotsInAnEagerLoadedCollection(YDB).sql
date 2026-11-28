-- YDB Ydb
SELECT
	m_1.ParentID as ParentID,
	d_1.`21` as `21`,
	d_1.`22` as `22`,
	d_1.`31` as `31`,
	d_1.`32` as `32`,
	d_1.`33` as `33`
FROM
	Parent m_1
		INNER JOIN (
			SELECT
				SUM(CASE
					WHEN d.ChildID = 21 THEN d.ChildID
					ELSE NULL
				END) as `21`,
				SUM(CASE
					WHEN d.ChildID = 22 THEN d.ChildID
					ELSE NULL
				END) as `22`,
				SUM(CASE
					WHEN d.ChildID = 31 THEN d.ChildID
					ELSE NULL
				END) as `31`,
				SUM(CASE
					WHEN d.ChildID = 32 THEN d.ChildID
					ELSE NULL
				END) as `32`,
				SUM(CASE
					WHEN d.ChildID = 33 THEN d.ChildID
					ELSE NULL
				END) as `33`,
				d.ParentID as ParentID
			FROM
				Child d
			GROUP BY
				d.ParentID
		) d_1 ON d_1.ParentID = m_1.ParentID
WHERE
	m_1.ParentID = 2 OR m_1.ParentID = 3

-- YDB Ydb
SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	p.ParentID = 2 OR p.ParentID = 3

