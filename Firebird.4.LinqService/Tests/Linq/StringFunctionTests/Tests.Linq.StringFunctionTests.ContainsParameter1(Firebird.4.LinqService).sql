﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @str VarChar(4) -- String
SET     @str = '%oh%'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE @str ESCAPE '~' AND "p"."PersonID" = 1

