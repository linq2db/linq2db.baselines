﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	c_1."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

