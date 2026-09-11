-- PostgreSQL.15 PostgreSQL12
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.15 PostgreSQL12
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.15 PostgreSQL12
DECLARE @values Integer -- Int32
SET     @values = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:values,
	1
)

-- PostgreSQL.15 PostgreSQL12
DECLARE @values Integer -- Int32
SET     @values = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:values,
	1
)

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- PostgreSQL.15 PostgreSQL12
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" IN (1001, 1002)

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

