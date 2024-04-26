﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	toInt32(NULL) as c1,
	toInt32(NULL) as c2,
	toInt32(NULL) as c3
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	toInt32(NULL) as ParentID,
	toInt32(NULL) as Value1,
	a_Parent.ParentID as c1,
	a_Parent.ParentID as c2,
	a_Parent.Value1 as c3
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
WHERE
	ch.ParentID = 2

