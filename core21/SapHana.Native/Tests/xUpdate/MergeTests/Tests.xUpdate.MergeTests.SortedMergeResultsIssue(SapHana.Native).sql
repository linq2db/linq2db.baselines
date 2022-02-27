BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Child" "t1"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"GrandChild" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 11
DECLARE @LeftId  -- Int32
SET     @LeftId = 100
DECLARE @RightId  -- Int32
SET     @RightId = 200

INSERT INTO "GrandChild"
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	:"Id",
	:"LeftId",
	:"RightId"
)

BeforeExecute
-- SapHana.Native SapHana

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"t2"."ChildID" as "Id"
	FROM
		"Parent" "t1",
		"Child" "t2"
) "Source"
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

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."GrandChildID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
ORDER BY
	"t1"."GrandChildID",
	"t1"."ChildID"

