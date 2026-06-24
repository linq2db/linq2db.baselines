-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = 1001

