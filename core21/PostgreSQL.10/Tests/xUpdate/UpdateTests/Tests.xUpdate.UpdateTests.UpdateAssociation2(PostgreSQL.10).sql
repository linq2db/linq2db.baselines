BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" = 10000

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 20000

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Parent"
SET
	"Value1" = 5
FROM
	"Child" child_1
		LEFT JOIN "Parent" "a_Parent" ON child_1."ParentID" = "a_Parent"."ParentID"
WHERE
	child_1."ChildID" = 10000 AND "Parent"."ParentID" = "a_Parent"."ParentID" AND
	("Parent"."Value1" = "a_Parent"."Value1" OR "Parent"."Value1" IS NULL AND "a_Parent"."Value1" IS NULL)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" = 10000

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 20000

