﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps VarChar(3) -- String
SET     @ps = '%[%'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND @s LIKE @ps ESCAPE '~'

