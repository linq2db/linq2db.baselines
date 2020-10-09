BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	Coalesce("p"."Value1", 0) > 0

