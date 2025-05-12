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
	'123' || CASE
		WHEN CHAR_LENGTH("p"."FirstName") >= 6 THEN "p"."FirstName"
		ELSE LPAD("p"."FirstName", 6, ' ')
	END = '123  John' AND
	"p"."PersonID" = 1

