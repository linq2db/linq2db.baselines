BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			"t2"."ParentID", 
			"t2"."ChildID"
		FROM
			( 
				SELECT 
					"t1"."ParentID", 
					"t1"."ChildID", 
					ROW_NUMBER() OVER () as RN
				FROM
					"Child" "t1"
			) "t2"
		WHERE
			"t2".RN > 2
	) "t3"

