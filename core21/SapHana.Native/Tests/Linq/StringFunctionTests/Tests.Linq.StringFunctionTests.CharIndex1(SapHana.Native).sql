﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Locate("p"."FirstName", 'oh') = 2 AND "p"."PersonID" = 1

