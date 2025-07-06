BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Child" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"GrandChild" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @LeftId Integer -- Int32
SET     @LeftId = 100
DECLARE @RightId Integer -- Int32
SET     @RightId = 200

INSERT INTO "GrandChild"
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	:Id,
	:LeftId,
	:RightId
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		r."ParentID" + t2."ChildID" as "ResultId",
		r."ParentID" as "LeftId",
		t2."ChildID" as "RightId"
	FROM
		"Parent" r
			CROSS JOIN "Child" t2
) "Source"
(
	"ResultId",
	"LeftId",
	"RightId"
)
ON ("Target"."GrandChildID" = "Source"."ResultId")

WHEN NOT MATCHED THEN
INSERT
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	"Source"."ResultId",
	"Source"."LeftId",
	"Source"."RightId"
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."GrandChildID",
	t1."ParentID",
	t1."ChildID"
FROM
	"GrandChild" t1
ORDER BY
	t1."GrandChildID"

BeforeExecute
DisposeTransaction
