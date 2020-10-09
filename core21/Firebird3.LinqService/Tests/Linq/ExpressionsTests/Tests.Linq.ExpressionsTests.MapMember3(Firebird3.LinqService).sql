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
			"p"."ParentID" = "c_1"."ParentID" AND "c_1"."ChildID" > @n
	) + 2
FROM
	"Parent" "p"

