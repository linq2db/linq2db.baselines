-- PostgreSQL.15 PostgreSQL13
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1010

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

-- PostgreSQL.15 PostgreSQL13

UPDATE
	"Parent"
SET
	"Value1" = 1012
WHERE
	"Parent"."ParentID" = 1010

RollbackTransaction
-- PostgreSQL.15 PostgreSQL13

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."ParentID" = 1010
LIMIT 1

