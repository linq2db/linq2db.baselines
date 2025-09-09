BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @name Int -- Int32
SET     @name = 8
DECLARE @idx Int -- Int32
SET     @idx = 4

UPDATE
	"Person" "t1"
SET
	"LastName" = CAST(? + ? AS NVarChar(11))
WHERE
	"t1"."FirstName" LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Update14%' ESCAPE '~'

