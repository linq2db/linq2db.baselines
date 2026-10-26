-- SapHana.Native SapHana
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Native SapHana
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	1
)

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = :"id"

-- SapHana.Native SapHana
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

