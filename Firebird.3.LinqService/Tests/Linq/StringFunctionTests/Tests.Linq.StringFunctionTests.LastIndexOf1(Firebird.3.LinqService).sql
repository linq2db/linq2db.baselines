﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CHAR_LENGTH("p"."LastName") - Position('p', Reverse("p"."LastName")) = 2 AND
	Position('p', "p"."LastName") <> 0 AND "p"."PersonID" = 1

