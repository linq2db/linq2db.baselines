﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

