﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	ch."ParentID" + p."ParentID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON ch."ParentID" = p."ParentID"
WHERE
	ch."ParentID" + p."ParentID" > 2

