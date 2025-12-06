-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.15 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = c_2."ParentID" + 1000
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
		LEFT JOIN "Child" c_2 ON c_2."ChildID" = 11
WHERE
	p."ParentID" = 1 AND "Parent"."ParentID" = p."ParentID" AND
	("Parent"."Value1" = p."Value1" OR "Parent"."Value1" IS NULL AND p."Value1" IS NULL)

-- PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	"Parent"
SET
	"ParentID" = :ParentID
WHERE
	"Parent"."ParentID" = 1001

