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
		LIMIT 4200000000 OFFSET 2
	) "t2"

