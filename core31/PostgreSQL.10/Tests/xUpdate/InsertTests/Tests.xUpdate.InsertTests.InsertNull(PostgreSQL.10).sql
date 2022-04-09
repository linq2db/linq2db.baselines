BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 1001

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = 1001

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."Value1" = 1001

