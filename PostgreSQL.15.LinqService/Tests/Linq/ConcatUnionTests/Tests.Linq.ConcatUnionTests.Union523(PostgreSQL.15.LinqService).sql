﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p1."ParentID",
	Cast(NULL as Int)
FROM
	"Parent" p1
UNION
SELECT
	p2."ParentID",
	p2."Value1"
FROM
	"Parent" p2

