BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	MIN("gr"."ParentID"),
	MAX("gr"."ParentID")
FROM
	"Parent" "gr"

