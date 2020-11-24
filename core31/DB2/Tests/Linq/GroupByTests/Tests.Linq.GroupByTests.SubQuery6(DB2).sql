BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID"
FROM
	(
		SELECT
			"ch"."ParentID" + 1 as "ParentID"
		FROM
			"Child" "ch"
	) "t1"
GROUP BY
	"t1"."ParentID"

