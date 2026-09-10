-- YDB Ydb
SELECT
	t2.ParentID + 1 as c1
FROM
	Parent p
		CROSS JOIN (
			SELECT
				t1.ParentID as ParentID
			FROM
				Child t1
			WHERE
				t1.ParentID > 0
		) t2

