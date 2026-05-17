-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"gr"."ParentID" as "Key_1"
		FROM
			"Child" "gr"
	) "t1"

