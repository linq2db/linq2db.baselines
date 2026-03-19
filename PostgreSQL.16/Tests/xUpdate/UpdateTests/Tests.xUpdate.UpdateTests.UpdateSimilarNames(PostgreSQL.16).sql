-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	20000,
	20000
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	10000,
	20000
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 20000

UPDATE
	"Child"
SET
	"ParentID" = :ParentID
FROM
	"Parent" t1
WHERE
	t1."Value1" = 20000 AND "Child"."ParentID" = t1."ParentID"

