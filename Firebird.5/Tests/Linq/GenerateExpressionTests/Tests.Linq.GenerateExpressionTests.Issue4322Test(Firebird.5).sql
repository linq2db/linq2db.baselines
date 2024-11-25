BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"x"."position"
FROM
	"entities" "x"
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT -10 AS X FROM rdb$database) "t"
		WHERE
			"x"."position".x > "t".X
	)
FETCH NEXT @take ROWS ONLY

