-- YDB Ydb

SELECT
	t1.ParentID as ParentID
FROM
	Parent p
		LEFT JOIN (
			SELECT DISTINCT
				a_Children.ParentID as ParentID
			FROM
				Child a_Children
		) t1 ON p.ParentID = t1.ParentID

