BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"f"."ParentID",
	"f"."Value1"
FROM
	"Parent" "f"
WHERE
	"f"."ParentID" >= 1 AND "f"."ParentID" <= 4

