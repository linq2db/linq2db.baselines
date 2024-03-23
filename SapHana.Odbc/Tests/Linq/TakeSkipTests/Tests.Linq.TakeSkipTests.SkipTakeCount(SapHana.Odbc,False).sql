BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		LIMIT 5 OFFSET 2
	) "t2"

