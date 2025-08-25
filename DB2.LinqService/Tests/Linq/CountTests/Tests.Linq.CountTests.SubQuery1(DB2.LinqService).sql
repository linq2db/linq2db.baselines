BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND Decimal("a_Children"."ChildID", 18, 10) <> 0
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

