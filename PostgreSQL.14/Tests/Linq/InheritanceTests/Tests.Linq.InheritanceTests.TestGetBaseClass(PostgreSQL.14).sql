﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	(x."Value1" = 1 OR x."Value1" = 2)

