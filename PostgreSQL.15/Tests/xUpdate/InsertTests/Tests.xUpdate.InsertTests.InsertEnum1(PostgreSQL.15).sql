-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.15 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	1001,
	:Value1
)

-- PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id AND t1."Value1" = :Value1

-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

