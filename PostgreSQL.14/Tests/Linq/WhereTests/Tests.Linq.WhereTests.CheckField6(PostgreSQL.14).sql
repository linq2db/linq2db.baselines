﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Value1",
	p."Value1" * 100,
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1 AND p."Value1" * 100 > 0 AND p."Value1" IS NOT NULL

