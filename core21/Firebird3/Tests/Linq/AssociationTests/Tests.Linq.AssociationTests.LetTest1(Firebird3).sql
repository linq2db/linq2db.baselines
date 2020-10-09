BeforeExecute
-- Firebird3 Firebird

SELECT 
	"p"."ParentID", 
	(
		SELECT 
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "p"

