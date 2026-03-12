-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			MAX("ch"."ChildID")
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

