﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" > 3 OR ch."ChildID" < 4
LIMIT 3

