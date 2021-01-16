BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	Cast(@ChildID as Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11

BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

