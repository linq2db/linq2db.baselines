BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE ? ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE ? ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE ? ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @nameToCheck_1 NVarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE ? ESCAPE '~' AND "p"."PersonID" = 1

