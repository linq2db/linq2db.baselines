BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT FIRST @take
			"keyParam"."Taxonomy"
		FROM
			"Doctor" "keyParam"
		WHERE
			"t1"."PersonID" = "keyParam"."PersonID"
	)
FROM
	"Doctor" "t1"
GROUP BY
	"t1"."PersonID"

