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
	Lower(Substring("p"."FirstName", 2, 2)) = 'oh' AND
	"p"."PersonID" = 1

