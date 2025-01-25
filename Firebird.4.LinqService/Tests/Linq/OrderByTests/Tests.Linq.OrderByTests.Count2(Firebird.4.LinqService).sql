BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
		FETCH NEXT @take ROWS ONLY
	) "t2"

