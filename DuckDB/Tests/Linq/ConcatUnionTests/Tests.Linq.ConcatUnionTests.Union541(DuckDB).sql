-- DuckDB

SELECT
	p.ParentID,
	p.ParentID,
	p.Value1,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER)
FROM
	Parent p
UNION
SELECT
	Coalesce(p2.Value1, 0),
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	t1.ParentID,
	t1.ParentID,
	t1.ChildID
FROM
	Parent p2
		LEFT JOIN LATERAL (
			SELECT
				a_Children.ParentID,
				a_Children.ChildID
			FROM
				Child a_Children
			WHERE
				p2.ParentID = a_Children.ParentID
			ORDER BY
				a_Children.ChildID DESC
			LIMIT 1
		) t1 ON 1=1

