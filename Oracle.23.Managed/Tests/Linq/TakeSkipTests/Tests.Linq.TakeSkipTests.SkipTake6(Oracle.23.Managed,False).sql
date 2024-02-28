﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	(
		SELECT
			p."ParentID"
		FROM
			"GrandChild" p
		FETCH NEXT 3 ROWS ONLY
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	(
		SELECT
			p."ParentID"
		FROM
			"GrandChild" p
		OFFSET 12 ROWS FETCH NEXT 3 ROWS ONLY 
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

