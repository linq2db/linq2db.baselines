﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	x."ParentID", 
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" % 2,
	x."ChildID" DESC

