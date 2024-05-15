BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

