﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"e"."PersonID",
	"e"."FirstName",
	"e"."LastName",
	"e"."FirstName" || ':' || "e"."LastName"
FROM
	"Person" "e"
WHERE
	"e"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

