BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	(
		SELECT FIRST @take 
			"ch"."ParentID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

