﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

UPDATE
	"Parent"
SET
	"ParentID" = p2."ParentID"
FROM
	"Parent" p2
WHERE
	"Parent"."ParentID" < 3 AND "Parent"."ParentID" = p2."ParentID"

