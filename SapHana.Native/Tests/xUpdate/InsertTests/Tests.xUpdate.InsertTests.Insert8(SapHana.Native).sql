-- SapHana.Native SapHana
DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- SapHana.Native SapHana
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:"ParentID",
	:"id"
)

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = :"id"

-- SapHana.Native SapHana
DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

