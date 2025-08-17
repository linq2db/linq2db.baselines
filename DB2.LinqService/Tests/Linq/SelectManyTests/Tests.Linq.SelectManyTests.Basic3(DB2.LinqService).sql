BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID" + 1
FROM
	"Parent" "p",
	"Child" "t1"
WHERE
	"t1"."ParentID" > 0

