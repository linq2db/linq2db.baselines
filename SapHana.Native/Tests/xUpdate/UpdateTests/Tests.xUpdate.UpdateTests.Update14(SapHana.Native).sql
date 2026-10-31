-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
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
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

-- SapHana.Native SapHana
DECLARE @name Integer -- Int32
SET     @name = 8
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	"Person" "t1"
SET
	"LastName" = CAST(:"name" + :"idx" AS NVarChar(11))
WHERE
	"t1"."FirstName" LIKE 'Update14%' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Update14%' ESCAPE '~'

