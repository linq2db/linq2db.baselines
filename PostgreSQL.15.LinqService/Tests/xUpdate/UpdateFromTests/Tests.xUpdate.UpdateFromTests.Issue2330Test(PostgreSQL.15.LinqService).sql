BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"Parent"
SET
	"Value1" = b."ChildID"
FROM
	"Child" b
WHERE
	b."ChildID" = (
		SELECT
			MAX(t1."ParentID")
		FROM
			"Child" t1
	) AND
	b."ChildID" = -1 AND "Parent"."ParentID" = b."ParentID"

