﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @Length Integer -- Int32
SET     @Length = 4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Char_Length("p"."FirstName") = @Length AND "p"."PersonID" = 1

