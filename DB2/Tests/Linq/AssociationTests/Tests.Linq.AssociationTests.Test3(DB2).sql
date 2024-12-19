BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"
WHERE
	"p"."ParentID" < 4 OR "p"."ParentID" >= 4

