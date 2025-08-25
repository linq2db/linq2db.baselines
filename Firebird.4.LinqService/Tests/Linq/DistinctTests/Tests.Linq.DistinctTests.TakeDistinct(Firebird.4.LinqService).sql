BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 4

SELECT DISTINCT
	"t1"."ParentID"
FROM
	(
		SELECT
			"ch"."ParentID"
		FROM
			"Child" "ch"
		ORDER BY
			"ch"."ParentID"
		FETCH NEXT @take ROWS ONLY
	) "t1"

