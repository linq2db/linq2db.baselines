﻿BeforeExecute
--  Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

