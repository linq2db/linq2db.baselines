﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = @ParentID

