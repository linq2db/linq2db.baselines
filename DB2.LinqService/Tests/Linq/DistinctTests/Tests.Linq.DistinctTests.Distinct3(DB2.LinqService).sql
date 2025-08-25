BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	"p"."Value1"
FROM
	"Parent" "p"

