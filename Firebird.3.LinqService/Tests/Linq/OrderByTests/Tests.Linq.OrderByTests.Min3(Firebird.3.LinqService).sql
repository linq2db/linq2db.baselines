BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	Min("t1"."ParentID")
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		ORDER BY
			"p"."Value1"
		FETCH NEXT @take ROWS ONLY
	) "t1"

