BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT
			c_1."ParentID"
		FROM
			"Child" c_1
		WHERE
			c_1."ChildID" = 11
	) + 1000
FROM
	"Parent" p
		INNER JOIN "Child" c_2 ON p."ParentID" = c_2."ParentID"
WHERE
	p."ParentID" = 1 AND "Parent"."ParentID" = p."ParentID" AND
	("Parent"."Value1" = p."Value1" OR "Parent"."Value1" IS NULL AND p."Value1" IS NULL)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	"Parent"
SET
	"ParentID" = :ParentID
WHERE
	"Parent"."ParentID" = 1001

