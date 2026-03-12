-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

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

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = -1

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

