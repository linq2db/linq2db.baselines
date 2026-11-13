-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "t1"

