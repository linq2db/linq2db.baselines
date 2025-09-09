BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"gr"."ParentID" as "Key_1"
		FROM
			"Child" "gr"
		GROUP BY
			"gr"."ParentID"
	) "t1"

