-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."ParentID",
	"p"."Value1",
	ROW_NUMBER() OVER (PARTITION BY "p"."Value1")
FROM
	"Parent" "p"

