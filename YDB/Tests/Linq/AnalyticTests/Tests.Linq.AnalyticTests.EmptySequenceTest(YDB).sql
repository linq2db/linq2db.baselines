-- YDB Ydb

SELECT
	m_1.ParentID as ParentID,
	d_1.Key_1 as Key_1,
	d_1.Children as Children
FROM
	Parent m_1
		INNER JOIN (
			SELECT
				d.ParentID as Key_1,
				Unicode::JoinFromList(AGGREGATE_LIST(Unwrap(CAST(d.ChildID AS Text))), ', 'u) as Children
			FROM
				Child d
			GROUP BY
				d.ParentID
		) d_1 ON m_1.ParentID = d_1.Key_1

-- YDB Ydb

SELECT
	c_1.ParentID as ParentID
FROM
	Parent c_1

