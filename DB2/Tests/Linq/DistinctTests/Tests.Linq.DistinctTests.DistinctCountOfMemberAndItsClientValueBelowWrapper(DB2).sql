-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"c_1"."ChildID"
		FROM
			"Child" "c_1"
	) "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"t1"."ChildID"
		FROM
			(
				SELECT
					"c_1"."ChildID"
				FROM
					"Child" "c_1"
				FETCH NEXT 100 ROWS ONLY
			) "t1"
	) "t2"

