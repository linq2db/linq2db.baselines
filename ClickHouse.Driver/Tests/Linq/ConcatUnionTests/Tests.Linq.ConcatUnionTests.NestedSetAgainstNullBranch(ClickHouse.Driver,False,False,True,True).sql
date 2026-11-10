-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID,
	toInt32(NULL) as c1,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ChildID
FROM
	Parent p
UNION DISTINCT
SELECT
	t1.ParentID as ParentID,
	t1.Child as c1,
	t1.Child as ParentID_1,
	t1.ChildID as ChildID
FROM
	(
		SELECT
			p_1.ParentID as ParentID,
			toInt32(NULL) as Child,
			toInt32(NULL) as ChildID
		FROM
			Parent p_1
		UNION ALL
		SELECT
			p_2.ParentID as ParentID,
			p_2.ParentID as Child,
			p_2.ParentID + 100 as ChildID
		FROM
			Parent p_2
	) t1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

