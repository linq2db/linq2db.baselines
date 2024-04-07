BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("p"."PersonID")
FROM
	"Person" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName NVarChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."PersonID",
	"p"."Gender",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > 4
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

