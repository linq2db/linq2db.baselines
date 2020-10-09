BeforeExecute
-- Firebird3 Firebird

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(
		SELECT 
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	) > 2

