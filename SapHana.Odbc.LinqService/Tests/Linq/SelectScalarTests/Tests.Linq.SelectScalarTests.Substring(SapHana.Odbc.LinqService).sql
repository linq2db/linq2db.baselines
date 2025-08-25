BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring('123', 2, ?)
FROM DUMMY

