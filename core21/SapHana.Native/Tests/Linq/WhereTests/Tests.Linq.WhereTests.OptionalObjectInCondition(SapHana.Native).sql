﻿BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = :"FirstName_1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" IS NULL

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = :"FirstName_1"

