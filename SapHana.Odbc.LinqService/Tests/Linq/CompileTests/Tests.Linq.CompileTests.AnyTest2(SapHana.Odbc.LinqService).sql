BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = ?
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = ?
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

