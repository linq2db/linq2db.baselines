﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
FETCH NEXT :n ROWS ONLY

