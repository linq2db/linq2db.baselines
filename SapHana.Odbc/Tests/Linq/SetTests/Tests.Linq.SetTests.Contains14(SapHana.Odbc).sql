-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"p"."ParentID"
			FROM
				"Parent" "p"
			WHERE
				"p"."ParentID" = 1
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"p"."ParentID"
			FROM
				"Parent" "p"
			WHERE
				"p"."ParentID" = 1
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

