BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT DISTINCT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "p"

