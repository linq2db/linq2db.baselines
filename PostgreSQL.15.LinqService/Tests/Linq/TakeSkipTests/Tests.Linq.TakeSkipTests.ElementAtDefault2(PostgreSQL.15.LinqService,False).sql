﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
LIMIT 1 OFFSET 300000 

