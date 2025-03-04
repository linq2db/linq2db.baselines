BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x_1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData"
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "x_1"

