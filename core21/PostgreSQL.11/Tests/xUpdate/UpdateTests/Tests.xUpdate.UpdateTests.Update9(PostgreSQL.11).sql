BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	:id
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = c_1."ChildID" + 1,
	"ParentID" = p."ParentID"
FROM
	"Child" c_1
		LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"
WHERE
	c_1."ChildID" = :id AND
	"a_Parent"."Value1" = 1 AND
	"Child"."ParentID" = c_1."ParentID" AND
	"Child"."ChildID" = c_1."ChildID"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002

SELECT 
	Count(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :ChildID

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

