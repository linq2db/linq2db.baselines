BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(4) -- String
SET     @FirstName_1 = 'John'
DECLARE @LastName_1 NVarChar(7) -- String
SET     @LastName_1 = 'Shepard'
DECLARE @Gender_1 Char(1) -- AnsiStringFixedLength
SET     @Gender_1 = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:"FirstName_1",
	:"LastName_1",
	:"Gender_1"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("PersonID") FROM "Person"

BeforeExecute
-- SapHana.Native SapHana
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
	"p"."FirstName" = 'John' AND "p"."LastName" = 'Shepard'
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

