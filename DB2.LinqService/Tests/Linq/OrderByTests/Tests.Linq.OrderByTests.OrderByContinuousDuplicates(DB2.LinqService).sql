BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Parent" "pp" ON "p"."ParentID" = "pp"."ParentID"
ORDER BY
	"p"."ParentID" DESC

