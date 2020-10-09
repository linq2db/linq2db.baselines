BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3

SELECT 
	"t2"."ParentID", 
	"t2"."ChildID"
FROM
	( 
		SELECT 
			"t1"."ParentID", 
			"t1"."ChildID", 
			ROW_NUMBER() OVER (ORDER BY "t1"."ChildID" DESC, ("t1"."ParentID" + 1)) as RN
		FROM
			"Child" "t1"
	) "t2"
WHERE
	"t2".RN > @skip

