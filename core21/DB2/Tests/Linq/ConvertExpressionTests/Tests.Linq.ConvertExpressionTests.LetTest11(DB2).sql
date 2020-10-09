BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"c_1"."ParentID", 
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" > 0
ORDER BY
	"c_1"."ParentID"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"c_1"."ParentID", 
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > -100
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	1
FROM
	"Parent" "p"

