-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"AsyncDataTable" "c_1"
			WHERE
				"c_1"."Id" = ?
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

