﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" = p."ParentID" AND p."Value1" = 1

