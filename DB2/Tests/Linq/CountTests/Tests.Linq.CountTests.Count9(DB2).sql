BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Child" "p"
		INNER JOIN "Parent" "a_Parent" ON "p"."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"

