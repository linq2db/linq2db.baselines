﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT @take ROWS ONLY

