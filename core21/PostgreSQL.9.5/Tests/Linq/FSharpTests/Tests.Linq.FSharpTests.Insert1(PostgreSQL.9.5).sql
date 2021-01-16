BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:ParentID,
	:ChildID
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

