﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
FROM
	"Parent" x
		INNER JOIN "Child" "a_Children" ON x."ParentID" = "a_Children"."ParentID"
WHERE
	1 = 0

