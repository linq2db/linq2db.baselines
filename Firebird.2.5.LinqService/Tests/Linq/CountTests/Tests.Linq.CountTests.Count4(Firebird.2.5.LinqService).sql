BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

