﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"p"."Gender",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (1, 3)
ORDER BY
	"p"."LastName"

