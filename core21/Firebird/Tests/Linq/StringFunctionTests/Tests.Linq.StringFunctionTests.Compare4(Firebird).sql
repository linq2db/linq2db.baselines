﻿BeforeExecute
-- Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower(Substring("p"."FirstName" from 2 for 2)) = 'oh' AND
	"p"."PersonID" = 1

