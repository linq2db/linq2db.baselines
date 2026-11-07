-- YDB Ydb
SELECT
	x_1.ParentID as ParentID,
	x_1.Index_1 as Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY x.ParentID DESC) - 1l as Index_1,
			x.ParentID as ParentID
		FROM
			Parent x
	) x_1
WHERE
	x_1.Index_1 >= 0l
ORDER BY
	x_1.ParentID DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

