﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Value1",
	p."ParentID"
FROM
	"Parent" p
WHERE
	(p."Value1" = 1 OR p."Value1" = 2)

