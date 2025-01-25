BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			"l"."ParentID" + 1
		FROM
			"Child" "l"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "sep"

