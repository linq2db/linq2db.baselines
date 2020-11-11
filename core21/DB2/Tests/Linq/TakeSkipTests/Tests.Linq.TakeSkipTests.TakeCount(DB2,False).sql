BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	(
		SELECT
			"t1"."ChildID"
		FROM
			"Child" "t1"
		FETCH FIRST 5 ROWS ONLY
	) "t2"

