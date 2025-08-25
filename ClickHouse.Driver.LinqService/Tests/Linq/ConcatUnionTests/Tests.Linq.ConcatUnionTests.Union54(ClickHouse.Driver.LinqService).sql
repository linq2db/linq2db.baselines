BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p1.ParentID,
	p1.ParentID as ParentID_1,
	p1.Value1,
	toInt32(NULL) as c1,
	toInt32(NULL) as ParentID_2,
	toInt32(NULL) as ChildID
FROM
	Parent p1
UNION DISTINCT
SELECT
	Coalesce(p2.Value1, 0) as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as Value1,
	t1.cond as c1,
	t1.cond as ParentID_2,
	t1.ChildID as ChildID
FROM
	Parent p2
		LEFT JOIN (
			SELECT
				a_Children.ParentID as cond,
				a_Children.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID DESC) as rn
			FROM
				Child a_Children
		) t1 ON p2.ParentID = t1.cond AND t1.rn <= 1

