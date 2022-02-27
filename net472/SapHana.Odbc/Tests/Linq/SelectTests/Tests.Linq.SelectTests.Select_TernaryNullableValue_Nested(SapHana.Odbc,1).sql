BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value_2  -- Int32
SET     @Value_2 = 1
DECLARE @Value_3  -- Int32
SET     @Value_3 = 1
DECLARE @Value_4  -- Int32
SET     @Value_4 = 3

SELECT
	CASE
		WHEN ? < 2 THEN ?
		ELSE ?
	END
FROM DUMMY

