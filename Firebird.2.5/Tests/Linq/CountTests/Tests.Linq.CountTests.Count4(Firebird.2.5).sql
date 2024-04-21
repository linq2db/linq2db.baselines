BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

