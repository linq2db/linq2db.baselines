BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	(
		SELECT
			"p"."Value1"
		FROM
			"Parent" "p"
		LIMIT 1
	)
FROM DUMMY

