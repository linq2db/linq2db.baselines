﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	ch."ParentID", 
	ch."ChildID"
FROM
	"GrandChild" g_1
		INNER JOIN "Child" ch ON g_1."ChildID" = ch."ChildID"
UNION
SELECT 
	ch_1."ParentID", 
	ch_1."ChildID"
FROM
	"Child" ch_1
		INNER JOIN "Parent" p ON ch_1."ParentID" = p."ParentID"

