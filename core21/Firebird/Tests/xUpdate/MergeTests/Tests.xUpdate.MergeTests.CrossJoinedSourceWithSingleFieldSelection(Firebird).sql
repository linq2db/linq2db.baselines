BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"

BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"

BeforeExecute
-- Firebird

DELETE FROM
	"GrandChild" "t1"

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird
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
	@Id,
	@LeftId,
	@RightId
)

BeforeExecute
-- Firebird

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"t2"."ChildID" as "Id"
	FROM
		"Parent" "t1",
		"Child" "t2"
) "Source"
(
	"Id"
)
ON ("Target"."GrandChildID" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"ChildID"
)
VALUES
(
	"Source"."Id"
)

