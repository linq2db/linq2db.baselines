﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	r."ChildID"
FROM
	"Parent" p
		INNER JOIN "Child" r ON p."ParentID" = r."ParentID"

