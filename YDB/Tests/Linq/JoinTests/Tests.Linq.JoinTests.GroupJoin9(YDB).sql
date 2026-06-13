-- YDB Ydb

SELECT
	a.ParentID as ParentID,
	a.Value1 as Value1,
	z.ParentID as ParentID_1,
	z.Value1 as Value1_1,
	y.ParentID as ParentID_2,
	y.Value1 as Value1_2,
	y.ParentID as ParentID_3,
	y.Value1 as Value1_3,
	y.ParentID as ParentID_4,
	y.Value1 as Value1_4,
	y.ParentID as ParentID_5,
	y.Value1 as Value1_5
FROM
	Parent a
		LEFT JOIN Parent y ON a.ParentID = y.ParentID
		LEFT JOIN Parent z ON a.ParentID = Coalesce(z.Value1, 1)

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

