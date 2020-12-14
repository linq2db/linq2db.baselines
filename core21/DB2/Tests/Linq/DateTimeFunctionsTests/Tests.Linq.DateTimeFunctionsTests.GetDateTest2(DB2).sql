BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date(CURRENT_TIMESTAMP),
	Count(*)
FROM
	"Parent" "v"
		INNER JOIN "Child" "s" ON "v"."ParentID" = "s"."ParentID"
WHERE
	"v"."Value1" > 0
FETCH FIRST 5 ROWS ONLY

