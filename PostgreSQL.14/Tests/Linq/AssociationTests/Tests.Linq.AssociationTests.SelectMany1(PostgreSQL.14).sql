﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	cp."ParentID",
	cp."Value1"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON cp."ParentID" = c_1."ParentID"

