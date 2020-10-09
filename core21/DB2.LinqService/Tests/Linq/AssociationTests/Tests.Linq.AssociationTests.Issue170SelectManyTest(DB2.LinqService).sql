BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"a_Parent"."Value1"
FROM
	"Parent" "x"
		INNER JOIN "Child" "c_1" ON "x"."ParentID" = "c_1"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."Value1"
WHERE
	"a_Parent"."Value1" IS NULL
FETCH FIRST 1 ROWS ONLY

