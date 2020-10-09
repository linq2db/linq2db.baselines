BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."ParentID", 
	1
FROM
	"Parent" "p"
UNION
SELECT 
	"ch"."ParentID", 
	0
FROM
	"Child" "ch"

