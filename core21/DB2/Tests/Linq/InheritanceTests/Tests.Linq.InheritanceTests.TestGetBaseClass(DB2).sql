BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"x"."ParentID", 
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	("x"."Value1" = 1 OR "x"."Value1" = 2)

