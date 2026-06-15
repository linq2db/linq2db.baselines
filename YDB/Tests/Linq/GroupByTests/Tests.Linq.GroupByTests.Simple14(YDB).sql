-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d_1.Key_1 as Key_1
FROM
	Parent m_1
		INNER JOIN (
			SELECT DISTINCT
				d.ParentID as Key_1
			FROM
				Child d
		) d_1 ON m_1.ParentID = d_1.Key_1

-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Parent p

