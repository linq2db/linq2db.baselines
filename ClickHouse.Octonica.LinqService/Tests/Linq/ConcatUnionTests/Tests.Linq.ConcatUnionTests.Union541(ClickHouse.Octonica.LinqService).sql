﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.ParentID as ParentID_1,
	p.Value1,
	toInt32(NULL) as c1,
	toInt32(NULL) as ParentID_2,
	toInt32(NULL) as ChildID
FROM
	Parent p
UNION DISTINCT
SELECT
	Coalesce(p2.Value1, 0) as ParentID,
	toInt32(NULL) as ParentID_1,
	toInt32(NULL) as Value1,
	t1.ParentID as c1,
	t1.ParentID as ParentID_2,
	t1.ChildID as ChildID
FROM
	Parent p2
		LEFT JOIN (
			SELECT
				a_Children.ParentID as ParentID,
				a_Children.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID DESC) as rn,
				a_Children.ParentID as ParentID_1
			FROM
				Child a_Children
		) t1 ON p2.ParentID = t1.ParentID_1 AND t1.rn <= 1

