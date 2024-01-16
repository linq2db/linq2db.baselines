BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = -1

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

