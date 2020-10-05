BeforeExecute
-- SapHana.Native SapHana
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t"."FirstName",
	"t"."PersonID",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = :"p"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p NVarChar(6) -- String
SET     @p = 'Tester'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t"."FirstName",
	"t"."PersonID",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = :"p"
LIMIT :"take"

