﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
ORDER BY
	p."ParentID"
LIMIT 1 OFFSET 2 

