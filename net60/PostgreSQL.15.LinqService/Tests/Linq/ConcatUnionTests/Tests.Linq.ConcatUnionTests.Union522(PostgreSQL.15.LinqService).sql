﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p1."Value1",
	Cast(NULL as Int)
FROM
	"Parent" p1
UNION
SELECT
	p2."Value1",
	p2."ParentID"
FROM
	"Parent" p2

