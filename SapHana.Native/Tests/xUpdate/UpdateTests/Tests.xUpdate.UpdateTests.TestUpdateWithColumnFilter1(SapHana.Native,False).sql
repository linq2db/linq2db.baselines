-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
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
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = :"FirstName"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = :"FirstName",
	"LastName" = :"LastName",
	"Gender" = :"Gender"
WHERE
	"t1"."PersonID" = :"ID"

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = :"FirstName"
LIMIT 1

