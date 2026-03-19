-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"c_2"."Value_1"
FROM
	"Parent" "t1"
		INNER JOIN (
			SELECT
				COUNT(*) as "Value_1",
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
			GROUP BY
				"c_1"."ParentID"
		) "c_2" ON "t1"."ParentID" = "c_2"."ParentID"
WHERE
	"c_2"."Value_1" > 0

-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

