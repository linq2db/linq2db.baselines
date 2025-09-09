BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Coalesce("p"."Value1", 100) + 50
FROM
	"Parent" "p"

