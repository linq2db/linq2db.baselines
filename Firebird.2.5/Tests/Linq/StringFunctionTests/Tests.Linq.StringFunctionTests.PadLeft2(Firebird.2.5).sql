﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	'123' || LPad("p"."FirstName", 6, '*') = '123**John' AND
	"p"."PersonID" = 1

