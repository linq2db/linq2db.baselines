﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
		INNER JOIN Parent p ON p.ParentID = Floor(toFloat64(ch.ChildID) / toFloat64(10))
WHERE
	ch.ParentID = p.ParentID

