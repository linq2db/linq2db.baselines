BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Parent"."Value1"
FROM
	"Parent" "x"
		LEFT JOIN "Parent" "a_Parent" ON "x"."ParentID" = "a_Parent"."Value1"
WHERE
	"x"."Value1" IS NULL
FETCH FIRST 1 ROWS ONLY

