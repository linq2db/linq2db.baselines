-- PostgreSQL.19 PostgreSQL12
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
	NEW."ChildID" + NEW."ParentID" + :param

-- PostgreSQL.19 PostgreSQL12
DECLARE @param Integer -- Int32
SET     @param = 100

SELECT
	c_1."ChildID" + c_1."ParentID" + :param
FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

-- PostgreSQL.19 PostgreSQL12

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

