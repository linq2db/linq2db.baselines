BeforeExecute
-- Firebird3 Firebird

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

