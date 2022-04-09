BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @param Integer -- Int32
SET     @param = 200

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	Cast(@id as Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11
RETURNING
	"Child"."ChildID" + "Child"."ParentID" + Cast(@param as Int)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

