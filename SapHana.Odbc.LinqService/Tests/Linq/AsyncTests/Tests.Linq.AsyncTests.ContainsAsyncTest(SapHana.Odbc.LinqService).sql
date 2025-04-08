BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"t1"."PersonID"
			FROM
				"Person" "t1"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

