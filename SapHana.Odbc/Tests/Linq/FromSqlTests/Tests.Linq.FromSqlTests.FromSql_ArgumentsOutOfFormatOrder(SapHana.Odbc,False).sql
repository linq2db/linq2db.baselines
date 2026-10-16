-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p NVarChar(1) -- String
SET     @p = 'X'

SELECT
	"p"."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = ? AND "LastName" <> ?
	) "p"

