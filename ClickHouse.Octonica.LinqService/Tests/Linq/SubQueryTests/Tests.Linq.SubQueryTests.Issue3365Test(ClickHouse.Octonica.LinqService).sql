﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID
FROM
	Child x
		LEFT JOIN (
			SELECT
				a_GrandChildren.ParentID as ParentID,
				ROW_NUMBER() OVER (PARTITION BY a_GrandChildren.ParentID, a_GrandChildren.ChildID ORDER BY a_GrandChildren.ParentID) as rn,
				a_GrandChildren.ChildID as ChildID
			FROM
				GrandChild a_GrandChildren
		) t1 ON x.ParentID = t1.ParentID AND x.ChildID = t1.ChildID AND t1.rn <= 1
ORDER BY
	t1.ParentID

