﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1 AND p."Value1" = 1 OR p."ParentID" = 2 AND p."Value1" IS NOT NULL

