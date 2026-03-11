-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT
			c_2."ParentID"
		FROM
			"Child" c_2
		WHERE
			c_2."ChildID" = 11
	) + 1000
FROM
	"Child" c_1
WHERE
	"Parent"."ParentID" = 1 AND "Parent"."ParentID" = c_1."ParentID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	"Parent"
SET
	"ParentID" = :ParentID
WHERE
	"Parent"."ParentID" = 1001

