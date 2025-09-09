BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "p" ON "c_1"."ParentID" = "p"."ParentID"

