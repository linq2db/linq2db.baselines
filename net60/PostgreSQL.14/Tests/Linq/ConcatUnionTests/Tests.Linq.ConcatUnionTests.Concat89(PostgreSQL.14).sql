﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ParentID"
FROM
	"Child" c_1
UNION ALL
SELECT
	c_2."ParentID",
	Cast(NULL as Int)
FROM
	"Parent" c_2

