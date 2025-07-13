BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002

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
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" IN (1001, 1002)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

