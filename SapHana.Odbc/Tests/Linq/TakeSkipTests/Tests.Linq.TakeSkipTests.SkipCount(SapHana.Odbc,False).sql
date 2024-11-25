BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Child" "t1"
		LIMIT 4200000000 OFFSET 2
	) "t2"

