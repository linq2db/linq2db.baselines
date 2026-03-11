-- PostgreSQL.13 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.13 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id

-- PostgreSQL.13 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

