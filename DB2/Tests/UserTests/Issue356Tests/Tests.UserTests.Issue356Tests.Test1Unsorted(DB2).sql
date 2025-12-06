-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."ParentID",
	"t2"."ChildID"
FROM
	"Parent" "x"
		INNER JOIN (
			SELECT DISTINCT
				"c_2"."ParentID",
				"c_2"."ChildID"
			FROM
				(
					SELECT
						"c_1"."ParentID",
						"c_1"."ChildID"
					FROM
						"Child" "c_1"
					UNION
					SELECT
						"t1"."ParentID",
						"t1"."ChildID"
					FROM
						"Child" "t1"
				) "c_2"
		) "t2" ON "t2"."ParentID" = "x"."ParentID"
FETCH NEXT 10 ROWS ONLY

