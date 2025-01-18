BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"t2".F2
FROM
	(
		SELECT DISTINCT
			"t1".F1,
			"t1".F2
		FROM
			"DistinctOrderByTable" "t1"
	) "t2"
ORDER BY
	"t2".F1

