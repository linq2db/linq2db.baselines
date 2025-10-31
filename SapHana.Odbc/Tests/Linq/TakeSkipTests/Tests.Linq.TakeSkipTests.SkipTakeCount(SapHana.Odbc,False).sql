-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		LIMIT 5 OFFSET 2
	) "t2"

