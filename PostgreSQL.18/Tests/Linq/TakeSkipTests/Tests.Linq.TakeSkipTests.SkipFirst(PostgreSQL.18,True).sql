﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
ORDER BY
	p."ParentID"
LIMIT 1 OFFSET :skip 

