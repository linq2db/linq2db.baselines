-- PostgreSQL.19 PostgreSQL13

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.19 PostgreSQL13
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	1
)

-- PostgreSQL.19 PostgreSQL13
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id

-- PostgreSQL.19 PostgreSQL13

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

