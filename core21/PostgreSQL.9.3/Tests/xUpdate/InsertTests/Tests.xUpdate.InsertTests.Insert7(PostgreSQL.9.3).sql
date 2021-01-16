BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	:id,
	:ParentID
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

