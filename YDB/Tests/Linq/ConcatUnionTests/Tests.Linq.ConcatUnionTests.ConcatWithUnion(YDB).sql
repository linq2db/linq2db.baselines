-- YDB Ydb

SELECT
	t1.ParentID as ParentID
FROM
	(
		SELECT
			c_1.ParentID as ParentID
		FROM
			Parent c_1
		UNION
		SELECT
			c_2.ParentID as ParentID
		FROM
			Parent c_2
	) t1
UNION ALL
SELECT
	t2.ParentID as ParentID
FROM
	(
		SELECT
			c_3.ParentID as ParentID
		FROM
			Parent c_3
		UNION
		SELECT
			c_4.ParentID as ParentID
		FROM
			Parent c_4
	) t2

