-- PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @param Integer -- Int32
SET     @param = 100

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	c_1."ParentID",
	:id
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 11
RETURNING
	"Child"."ChildID" + "Child"."ParentID" + :param

-- PostgreSQL.13 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 100

SELECT
	c_1."ChildID" + c_1."ParentID" + :param
FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

-- PostgreSQL.13 PostgreSQL

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

