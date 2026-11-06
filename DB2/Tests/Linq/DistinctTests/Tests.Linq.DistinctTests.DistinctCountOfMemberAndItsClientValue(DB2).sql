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
			"x"."ChildID"
		FROM
			"Child" "x"
		WHERE
			"x"."ChildID" > 20
	) "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	MAX("t1"."ChildID")
FROM
	(
		SELECT DISTINCT
			"c_1"."ChildID"
		FROM
			"Child" "c_1"
	) "t1"

