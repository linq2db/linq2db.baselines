-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

