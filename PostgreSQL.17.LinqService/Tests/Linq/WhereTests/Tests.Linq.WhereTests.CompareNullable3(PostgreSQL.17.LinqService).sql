﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" = p."ParentID" AND
	p."Value1" IS NOT NULL AND
	p."Value1" = 1 AND
	p."Value1" IS NOT NULL

