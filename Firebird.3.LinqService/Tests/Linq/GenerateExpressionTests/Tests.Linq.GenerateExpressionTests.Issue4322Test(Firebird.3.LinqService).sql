BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"x"."position"
FROM
	"entities" "x"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			(
				SELECT -10 AS X, 10 AS Y FROM rdb$database) "t"
		WHERE
			"x"."position".x > "t".X
	)
FETCH NEXT @take ROWS ONLY

