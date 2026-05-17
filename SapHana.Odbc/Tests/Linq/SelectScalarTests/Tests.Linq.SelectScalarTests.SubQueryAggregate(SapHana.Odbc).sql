-- SapHana.Odbc SapHanaOdbc

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "t1"
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t2"
	)
FROM DUMMY

