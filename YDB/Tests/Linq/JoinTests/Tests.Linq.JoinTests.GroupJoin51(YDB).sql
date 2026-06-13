-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d.ParentID as ParentID_1,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
				INNER JOIN (
					SELECT
						ROW_NUMBER() OVER (PARTITION BY ch.ParentID ORDER BY ch.ChildID DESC) as rn,
						ch.ParentID as ParentID
					FROM
						Child ch
				) t1 ON p.ParentID = t1.ParentID
		WHERE
			p.ParentID = 1 AND t1.rn = 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	t1.ParentID as ParentID_1,
	t1.ChildID as ChildID
FROM
	Parent p
		INNER JOIN (
			SELECT
				ch.ParentID as ParentID,
				ch.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY ch.ParentID ORDER BY ch.ChildID DESC) as rn
			FROM
				Child ch
		) t1 ON p.ParentID = t1.ParentID
WHERE
	p.ParentID = 1 AND t1.rn = 1

