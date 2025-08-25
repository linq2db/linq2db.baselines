BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

