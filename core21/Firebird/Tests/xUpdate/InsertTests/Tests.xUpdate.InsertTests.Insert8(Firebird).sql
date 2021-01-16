BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird
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
	Cast(@ParentID as Int),
	Cast(@id as Int)
)

BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

