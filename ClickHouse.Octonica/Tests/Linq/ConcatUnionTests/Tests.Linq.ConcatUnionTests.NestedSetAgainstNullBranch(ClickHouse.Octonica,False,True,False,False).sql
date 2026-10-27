-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.ParentID_1,
	t1.ParentID_1 as ParentID_2,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.ParentID as ParentID_1,
			p.ParentID + 100 as ChildID
		FROM
			Parent p
		UNION DISTINCT
		SELECT
			p_1.ParentID as ParentID,
			toInt32(NULL) as ParentID_1,
			toInt32(NULL) as ChildID
		FROM
			Parent p_1
	) t1
UNION DISTINCT
SELECT
	p_2.ParentID as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as ParentID_2,
	toInt32(NULL) as ChildID
FROM
	Parent p_2

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

