﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p1."ParentID", 
	p1."Value1"
FROM
	"Parent" p1,
	"Parent" p2
WHERE
	p1."Value1" = p2."Value1"

