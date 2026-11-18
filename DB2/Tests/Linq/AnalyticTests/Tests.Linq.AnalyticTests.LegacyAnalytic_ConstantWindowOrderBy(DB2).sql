-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."ParentID",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID"),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID")
FROM
	"Parent" "p"

