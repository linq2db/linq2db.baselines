﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	"a_Children"."ParentID" + p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" "a_Children" ON p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" + p."ParentID" > 1

