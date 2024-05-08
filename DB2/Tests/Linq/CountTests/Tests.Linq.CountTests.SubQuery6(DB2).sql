BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p_1"."ParentID" = "a_Children"."ParentID"
	)
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		FETCH NEXT 5 ROWS ONLY
	) "p_1"
ORDER BY
	"p_1"."ParentID" DESC

