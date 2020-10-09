BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"key_data_result"."ParentID", 
	"_c"."ParentID", 
	"_c"."ChildID"
FROM
	( 
		SELECT DISTINCT 
			"t1"."ParentID"
		FROM
			( 
				SELECT 
					"t"."ParentID"
				FROM
					"Parent" "t"
				WHERE
					"t"."ParentID" > 0
				FETCH FIRST 5000 ROWS ONLY
			) "t1"
	) "key_data_result"
		INNER JOIN "Child" "_c" ON "_c"."ParentID" = "key_data_result"."ParentID" AND "_c"."ChildID" > -100

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."ParentID", 
	CASE WHEN EXISTS(
		SELECT 
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = "t"."ParentID" AND "c_1"."ChildID" > -100
	) THEN 1 ELSE 0 END, 
	(
		SELECT 
			Count(*)
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ParentID" = "t"."ParentID" AND "c_2"."ChildID" > -100
	), 
	(
		SELECT 
			"c_3"."ParentID"
		FROM
			"Child" "c_3"
		WHERE
			"c_3"."ParentID" = "t"."ParentID" AND "c_3"."ChildID" > -100 AND
			"c_3"."ParentID" > 0
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" > 0
FETCH FIRST 5000 ROWS ONLY

