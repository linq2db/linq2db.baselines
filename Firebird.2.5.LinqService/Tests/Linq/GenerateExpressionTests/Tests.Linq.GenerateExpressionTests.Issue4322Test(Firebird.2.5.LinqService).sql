BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"x"."position"
FROM
	"entities" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS X FROM rdb$database) "t"
		WHERE
			"x"."position".x > "t".X
	)

