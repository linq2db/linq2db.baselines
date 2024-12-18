﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
	(
		SELECT
			MAX(b2."ParentID")
		FROM
			"Child" b2
	) IS NOT NULL AND
	b."ChildID" = -1 AND
	"Parent"."ParentID" = b."ParentID"

