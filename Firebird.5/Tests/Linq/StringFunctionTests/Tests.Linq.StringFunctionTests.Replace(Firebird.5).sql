﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Replace("p"."FirstName", 'hn', 'lie') = 'Jolie' AND
	"p"."PersonID" = 1

