﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	Max(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	Max(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID

