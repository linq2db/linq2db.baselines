﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

