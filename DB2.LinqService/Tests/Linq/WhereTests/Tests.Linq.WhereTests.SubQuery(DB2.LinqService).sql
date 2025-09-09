BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	("t"."ParentID" * 1000) / 1000
FROM
	"Child" "t"
WHERE
	"t"."ParentID" * 1000 > 2000

