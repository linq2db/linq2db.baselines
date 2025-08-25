BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @testValue Integer -- Int32
SET     @testValue = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = @testValue

