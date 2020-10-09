BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 
	"t1"."ParentID" + 1000, 
	"t1"."Value1"
FROM
	( 
		SELECT 
			"c_1"."ParentID", 
			Int(Floor(Float("c_1"."ChildID") / 10)) as "Value1"
		FROM
			"Child" "c_1"
		UNION
		SELECT 
			Coalesce("c_2"."ParentID", 0) as "ParentID", 
			Floor(Float(Coalesce("c_2"."GrandChildID", 0)) / 100) as "Value1"
		FROM
			"GrandChild" "c_2"
	) "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" > 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

