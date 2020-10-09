BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"a_Parent"."ParentID", 
	"a_Parent"."Value1"
FROM
	( 
		SELECT 
			"a_ParentID2"."ParentID", 
			"a_ParentID2"."Value1"
		FROM
			"Child" "t1"
				INNER JOIN "Parent" "a_ParentID2" ON "t1"."ParentID" = "a_ParentID2"."ParentID"
		GROUP BY
			"a_ParentID2"."ParentID",
			"a_ParentID2"."Value1"
	) "cp"
		INNER JOIN "Child" "c_1"
			INNER JOIN "Parent" "a_ParentID2_1" ON "c_1"."ParentID" = "a_ParentID2_1"."ParentID"
		ON ("cp"."ParentID" = "a_ParentID2_1"."ParentID" AND ("cp"."Value1" IS NULL AND "a_ParentID2_1"."Value1" IS NULL OR "cp"."Value1" = "a_ParentID2_1"."Value1"))
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"

