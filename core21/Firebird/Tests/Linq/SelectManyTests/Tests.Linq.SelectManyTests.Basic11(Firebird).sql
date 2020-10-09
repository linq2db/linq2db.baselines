BeforeExecute
-- Firebird

SELECT 
	"c_1"."ParentID"
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
		ON ("a_ParentID2_1"."ParentID" = "cp"."ParentID" AND ("a_ParentID2_1"."Value1" IS NULL AND "cp"."Value1" IS NULL OR "a_ParentID2_1"."Value1" = "cp"."Value1"))

