BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

