BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	"p"."Value1"
FROM
	"Parent" "p"

