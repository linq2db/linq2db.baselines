﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID" + 1,
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1
UNION ALL
SELECT
	Cast(NULL as Int),
	p_1."ParentID"
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" = 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

