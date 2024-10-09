BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	Substring('123', 2, ?)
FROM DUMMY

