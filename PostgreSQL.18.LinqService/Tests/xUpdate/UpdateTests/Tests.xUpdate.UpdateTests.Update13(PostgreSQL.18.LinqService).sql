﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = p1."ParentID"
FROM
	"Parent" p1
WHERE
	p1."ParentID" < 3 AND p1."ParentID" = "Parent"."ParentID"

