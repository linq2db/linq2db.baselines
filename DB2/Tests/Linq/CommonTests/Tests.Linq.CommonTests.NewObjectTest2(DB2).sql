-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "j" ON "p"."ParentID" = "j"."ParentID"
WHERE
	"p"."ParentID" = 1

