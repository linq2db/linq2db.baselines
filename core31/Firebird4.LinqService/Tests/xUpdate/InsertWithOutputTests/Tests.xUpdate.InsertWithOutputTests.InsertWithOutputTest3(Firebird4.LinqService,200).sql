BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

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
	"Child"."ChildID",
	"Child"."ParentID"

BeforeExecute
-- Firebird4 Firebird

SELECT
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

