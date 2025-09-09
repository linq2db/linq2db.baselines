BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2))
FROM
	"Parent" "p"

