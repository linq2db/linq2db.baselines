﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p1."Value1",
	NULL::Int
FROM
	"Parent" p1
UNION
SELECT
	p2."Value1",
	p2."ParentID"
FROM
	"Parent" p2

