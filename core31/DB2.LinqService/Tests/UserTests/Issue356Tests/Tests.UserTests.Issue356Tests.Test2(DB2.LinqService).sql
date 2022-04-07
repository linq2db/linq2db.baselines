BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"cp"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "cp"
		CROSS JOIN (
			SELECT
				"t3"."ParentID",
				"t3"."ChildID"
			FROM
				(
					SELECT
						"t1"."ParentID",
						"t1"."ChildID"
					FROM
						"Child" "t1"
					UNION
					SELECT
						"t2"."ParentID",
						"t2"."ChildID"
					FROM
						"Child" "t2"
				) "t3"
			ORDER BY
				"t3"."ParentID"
			FETCH FIRST 10 ROWS ONLY
		) "c_1"
WHERE
	"c_1"."ParentID" = "cp"."ParentID"
ORDER BY
	"cp"."ParentID"
FETCH FIRST 10 ROWS ONLY

