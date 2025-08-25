BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	"t3".F2
FROM
	(
		SELECT DISTINCT
			"t2".F1,
			"t2".F2
		FROM
			(
				SELECT
					"t1".F1,
					"t1".F2
				FROM
					"DistinctOrderByTable" "t1"
				ORDER BY
					"t1".F3 DESC
				FETCH NEXT @take ROWS ONLY
			) "t2"
	) "t3"

