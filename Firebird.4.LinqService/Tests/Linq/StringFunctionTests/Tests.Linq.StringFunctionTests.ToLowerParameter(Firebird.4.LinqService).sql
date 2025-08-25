﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @param VarChar(4) -- String
SET     @param = 'john'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") = CAST(@param AS VARCHAR(4)) AND
	"p"."PersonID" = 1

