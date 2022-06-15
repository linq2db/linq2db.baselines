BeforeExecute
-- Firebird3 Firebird

SELECT
	(
		SELECT FIRST 1
			"d"."Taxonomy"
		FROM
			"Doctor" "d"
		WHERE
			"t1"."PersonID" = "d"."PersonID"
	)
FROM
	"Doctor" "t1"
GROUP BY
	"t1"."PersonID"

