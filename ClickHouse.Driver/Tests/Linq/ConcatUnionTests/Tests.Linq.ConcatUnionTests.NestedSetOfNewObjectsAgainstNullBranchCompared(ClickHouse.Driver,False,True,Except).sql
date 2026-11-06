-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Child,
	t1.Child as Child_1,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			toInt32(NULL) as Child,
			toInt32(NULL) as ChildID
		FROM
			Parent p
		UNION ALL
		SELECT
			p_1.ParentID as ParentID,
			p_1.ParentID as Child,
			p_1.ParentID + 100 as ChildID
		FROM
			Parent p_1
	) t1
EXCEPT DISTINCT
SELECT
	p_2.ParentID as ParentID,
	toInt32(NULL) as Child,
	toInt32(NULL) as Child_1,
	toInt32(NULL) as ChildID
FROM
	Parent p_2

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

