BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Int32
SET     @value = 1
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	?,
	CASE
		WHEN 1 = 1 THEN ?
		ELSE 5
	END
FROM DUMMY

