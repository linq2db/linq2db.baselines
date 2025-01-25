BeforeExecute
-- Firebird.4 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

