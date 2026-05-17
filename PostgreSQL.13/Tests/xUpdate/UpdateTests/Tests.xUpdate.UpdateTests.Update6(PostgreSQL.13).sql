-- PostgreSQL.13 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1

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

-- PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 1

-- PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent"
SET
	"Value1" = 2
WHERE
	"Parent"."ParentID" = :id

-- PostgreSQL.13 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 2

