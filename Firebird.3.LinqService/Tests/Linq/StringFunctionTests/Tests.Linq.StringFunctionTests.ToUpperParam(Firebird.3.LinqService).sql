﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @param VarChar(4) -- String
SET     @param = 'JOHN'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Upper("p"."FirstName") = @param AND "p"."PersonID" = 1

