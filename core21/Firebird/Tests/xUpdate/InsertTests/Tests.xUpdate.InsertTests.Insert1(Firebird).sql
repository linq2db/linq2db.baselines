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

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

