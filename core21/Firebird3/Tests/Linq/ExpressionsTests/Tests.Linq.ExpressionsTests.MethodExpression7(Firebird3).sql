BeforeExecute
-- Firebird3 Firebird
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = "p"."ParentID"
	) + Cast(@n as Int)
FROM
	"Parent" "p"

