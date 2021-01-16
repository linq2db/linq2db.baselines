BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	Cast(@id as Int),
	Cast(@ParentID as Int)
)

BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

