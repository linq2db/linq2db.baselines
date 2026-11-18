-- DB2 DB2.LUW DB2LUW
SELECT
	"x_1"."ParentID"
FROM
	(
		SELECT
			"x"."ParentID",
			CAST(NULL AS Int) as "Child"
		FROM
			"Parent" "x"
		UNION ALL
		SELECT
			"t1"."ParentID",
			"c_1"."ParentID" as "Child"
		FROM
			"Parent" "t1"
				LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "t1"."ParentID"
	) "x_1"
WHERE
	"x_1"."Child" IS NULL

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

