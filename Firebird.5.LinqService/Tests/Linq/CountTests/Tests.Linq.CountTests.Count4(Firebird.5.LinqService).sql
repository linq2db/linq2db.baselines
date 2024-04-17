BeforeExecute
-- Firebird.5 Firebird4

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

