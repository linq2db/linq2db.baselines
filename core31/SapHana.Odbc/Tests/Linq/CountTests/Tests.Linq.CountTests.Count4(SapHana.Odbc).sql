BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

