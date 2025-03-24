﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	DENSE_RANK() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	DENSE_RANK() OVER(ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	DENSE_RANK(1, 2) WITHIN GROUP (ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

