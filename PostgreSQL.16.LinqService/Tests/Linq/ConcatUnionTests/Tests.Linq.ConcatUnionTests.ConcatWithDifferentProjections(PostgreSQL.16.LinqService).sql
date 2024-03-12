﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p1."ParentID",
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
UNION ALL
SELECT
	Coalesce(p2."Value1", 0),
	Cast(NULL as Int),
	Cast(NULL as Int)
FROM
	"Parent" p2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

