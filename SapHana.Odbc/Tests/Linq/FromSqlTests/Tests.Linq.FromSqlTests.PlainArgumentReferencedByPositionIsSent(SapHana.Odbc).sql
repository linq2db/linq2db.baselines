-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = ? OR "PersonID" = ?
	) "p"
ORDER BY
	"p"."PersonID"

