-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
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
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
DECLARE @p NVarChar(5) -- String
SET     @p = 'John0'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = :"p" AND "p"."LastName" = 'Shepard'
LIMIT 2

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
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
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
DECLARE @p NVarChar(5) -- String
SET     @p = 'John1'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = :"p" AND "p"."LastName" = 'Shepard'
LIMIT 2

-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

