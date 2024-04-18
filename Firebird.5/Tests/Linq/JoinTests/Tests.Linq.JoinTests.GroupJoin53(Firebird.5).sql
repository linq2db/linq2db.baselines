BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			"ch"."ParentID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

