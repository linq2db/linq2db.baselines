﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ParentID",
	c_1."ParentID"
FROM
	"Parent" c_1
UNION ALL
SELECT
	c_2."ParentID",
	c_2."ParentID" + 1,
	c_2."ChildID"
FROM
	"Child" c_2

