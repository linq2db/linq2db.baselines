BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND "_"."Gender" = 'M'

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND 'M' = "_"."Gender"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @gender_1 NChar -- StringFixedLength
SET     @gender_1 = 'M'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND "_"."Gender" = :"gender_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @gender_1 NChar -- StringFixedLength
SET     @gender_1 = 'M'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND :"gender_1" = "_"."Gender"

