BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	(
		SELECT 
			"ch"."ParentID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

