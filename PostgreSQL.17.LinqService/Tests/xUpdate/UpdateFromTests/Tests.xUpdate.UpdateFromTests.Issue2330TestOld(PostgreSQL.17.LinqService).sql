BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

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

