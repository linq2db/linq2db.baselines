﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"p"."MiddleName",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
UNION
SELECT
	"p_1"."PersonID",
	"p_1"."MiddleName",
	"p_1"."FirstName",
	"p_1"."LastName"
FROM
	"Person" "p_1"
WHERE
	"p_1"."PersonID" = 1

