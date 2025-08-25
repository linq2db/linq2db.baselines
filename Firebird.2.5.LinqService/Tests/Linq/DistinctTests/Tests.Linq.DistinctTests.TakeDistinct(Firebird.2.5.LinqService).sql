BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 4

SELECT DISTINCT
	"t1"."ParentID"
FROM
	(
		SELECT FIRST @take
			"ch"."ParentID"
		FROM
			"Child" "ch"
		ORDER BY
			"ch"."ParentID"
	) "t1"

