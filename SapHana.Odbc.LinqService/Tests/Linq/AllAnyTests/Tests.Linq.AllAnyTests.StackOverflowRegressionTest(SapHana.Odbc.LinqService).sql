BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

