BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	Cast(@ParentID as Int),
	1
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = @id

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

