BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"
HAVING
	Count(*) > 1

