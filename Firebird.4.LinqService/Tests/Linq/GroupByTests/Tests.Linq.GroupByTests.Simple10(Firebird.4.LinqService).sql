BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID"
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	"keyParam"."ParentID",
	"keyParam"."ChildID"
FROM
	"Child" "keyParam"
WHERE
	"keyParam"."ParentID" = @ParentID

