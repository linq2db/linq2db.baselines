BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"m_1"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

