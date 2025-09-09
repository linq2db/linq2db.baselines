BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	EXISTS(
		SELECT
			MAX("y"."ChildID")
		FROM
			"Child" "y"
		GROUP BY
			"y"."ParentID"
		HAVING
			MAX("y"."ChildID") = "x"."ChildID"
	)

