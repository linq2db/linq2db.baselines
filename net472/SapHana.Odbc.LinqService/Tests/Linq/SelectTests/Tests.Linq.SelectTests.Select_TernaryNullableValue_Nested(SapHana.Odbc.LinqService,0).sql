BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value_2  -- Int32
SET     @Value_2 = 0
DECLARE @Value_3  -- Int32
SET     @Value_3 = 0

SELECT
	CASE
		WHEN ? < 2 THEN ?
		ELSE 2
	END
FROM DUMMY

