﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID + cp.ParentID
FROM
	Parent cp
		INNER JOIN Child t1 ON 1=1
WHERE
	t1.ParentID + cp.ParentID > 1 AND cp.ParentID = t1.ParentID

