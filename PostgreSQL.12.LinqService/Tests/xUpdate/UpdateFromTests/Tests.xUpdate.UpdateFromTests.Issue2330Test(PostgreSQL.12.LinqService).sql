﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Parent"
SET
	"Value1" = b."ChildID"
FROM
	"Child" b
WHERE
	b."ChildID" = (
		SELECT
			MAX(b2."ParentID")
		FROM
			"Child" b2
	) AND
	b."ChildID" = -1 AND "Parent"."ParentID" = b."ParentID"

