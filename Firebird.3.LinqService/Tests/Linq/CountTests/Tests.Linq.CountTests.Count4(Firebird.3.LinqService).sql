BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

