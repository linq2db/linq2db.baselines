﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
FETCH NEXT :p_1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @p_1 Int32
SET     @p_1 = 2

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :ParentID
FETCH NEXT :p_1 ROWS ONLY

