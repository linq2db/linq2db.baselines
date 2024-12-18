BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1 AND "p"."Value1" = 1 AND "p"."Value1" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

