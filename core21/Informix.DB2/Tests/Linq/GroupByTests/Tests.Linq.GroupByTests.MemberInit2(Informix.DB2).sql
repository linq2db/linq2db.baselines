﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
GROUP BY
	t1.ParentID,
	t1.ChildID

