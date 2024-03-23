BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Int32
SET     @value = 0
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 0

SELECT
	?,
	CASE
		WHEN 1 = 1 THEN ?
		ELSE 4
	END
FROM DUMMY

