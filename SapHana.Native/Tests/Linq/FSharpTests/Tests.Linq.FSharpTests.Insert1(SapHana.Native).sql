-- SapHana.Native SapHana
DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- SapHana.Native SapHana
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
	:"ParentID",
	:"ChildID"
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

-- SapHana.Native SapHana
DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

