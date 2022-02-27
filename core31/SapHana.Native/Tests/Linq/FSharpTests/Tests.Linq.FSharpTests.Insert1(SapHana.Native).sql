BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:"ParentID",
	:"ChildID"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

