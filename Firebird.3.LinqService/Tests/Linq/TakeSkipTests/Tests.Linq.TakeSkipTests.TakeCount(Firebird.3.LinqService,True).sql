BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		FETCH NEXT @take ROWS ONLY
	) "t2"

