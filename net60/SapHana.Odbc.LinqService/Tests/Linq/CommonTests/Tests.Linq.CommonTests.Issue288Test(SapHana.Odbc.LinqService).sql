BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID NVarChar(4) -- String
SET     @ID = 'John'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = ?
LIMIT ?

