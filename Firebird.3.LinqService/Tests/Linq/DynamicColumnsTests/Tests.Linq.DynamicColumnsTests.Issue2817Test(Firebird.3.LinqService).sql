﻿BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."LastName" = 'ministra'
ORDER BY
	"p"."LastName"

