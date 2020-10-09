BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."ParentID", 
	"t1"."ChildID"
FROM
	( 
		SELECT 
			"ch"."ParentID", 
			"ch"."ChildID", 
			ROW_NUMBER() OVER () as RN
		FROM
			"Child" "ch"
		WHERE
			("ch"."ChildID" > 3 OR "ch"."ChildID" < 4)
	) "t1"
WHERE
	"t1".RN > 3

