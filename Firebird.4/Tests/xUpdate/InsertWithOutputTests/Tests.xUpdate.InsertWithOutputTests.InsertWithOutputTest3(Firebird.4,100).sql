BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @param Integer -- Int32
SET     @param = 100

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	CAST(@id AS Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11
RETURNING
	"Child"."ChildID" + "Child"."ParentID" + CAST(@param AS Int)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 100

SELECT
	"c_1"."ChildID" + "c_1"."ParentID" + CAST(@param AS Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

