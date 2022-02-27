BeforeExecute
-- SapHana.Native SapHana

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

