BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
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
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("PersonID") FROM "Person"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(5) -- String
SET     @FirstName_1 = 'John0'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = :"FirstName_1" AND "p"."LastName" = 'Shepard'
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
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
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("PersonID") FROM "Person"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(5) -- String
SET     @FirstName_1 = 'John1'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = :"FirstName_1" AND "p"."LastName" = 'Shepard'
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

