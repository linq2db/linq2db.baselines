BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"r"."ParentID",
	"r"."Value1"
FROM
	"Parent" "r"
WHERE
	"r"."ParentID" = @p

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

