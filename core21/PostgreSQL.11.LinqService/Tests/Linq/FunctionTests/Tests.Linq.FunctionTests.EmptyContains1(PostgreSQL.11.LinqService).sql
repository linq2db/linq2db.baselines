﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	p."ParentID", 
	p."Value1"
FROM
	"Parent" p
WHERE
	(1 = 0 OR p."ParentID" = 2)

