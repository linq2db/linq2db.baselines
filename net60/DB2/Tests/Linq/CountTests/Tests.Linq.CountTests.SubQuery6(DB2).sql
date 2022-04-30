BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)
FROM
	(
		SELECT
			"t2"."ParentID"
		FROM
			"Parent" "t2"
		FETCH FIRST 5 ROWS ONLY
	) "p"
ORDER BY
	"p"."ParentID" DESC

