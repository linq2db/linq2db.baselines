﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" DESC,
	(x."ChildID"::decimal % 2)::decimal DESC

