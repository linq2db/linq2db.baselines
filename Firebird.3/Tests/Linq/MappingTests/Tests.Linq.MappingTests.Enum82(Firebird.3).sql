BeforeExecute
-- Firebird.3 Firebird3
DECLARE @testValue Integer -- Int32
SET     @testValue = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = @testValue

