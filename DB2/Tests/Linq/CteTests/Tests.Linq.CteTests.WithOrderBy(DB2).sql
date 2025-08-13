BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE_1 ("ParentID", "Value1")
AS
(
	SELECT
		"t1"."ParentID",
		"t1"."Value1"
	FROM
		"Parent" "t1"
	ORDER BY
		"t1"."ParentID" DESC
)
SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	CTE_1 "t2"

