BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1",
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
UNION ALL
SELECT
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	"a_Parent"."ParentID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"
WHERE
	"ch"."ParentID" = 2

