﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	ch."ChildID"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON ch."ParentID" = p."ParentID" AND ch."ChildID" = ch."ParentID" * 10 + 1
WHERE
	p."ParentID" <> 5

