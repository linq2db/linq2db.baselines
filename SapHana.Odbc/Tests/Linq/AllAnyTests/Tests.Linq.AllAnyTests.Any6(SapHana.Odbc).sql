BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" > 3
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

