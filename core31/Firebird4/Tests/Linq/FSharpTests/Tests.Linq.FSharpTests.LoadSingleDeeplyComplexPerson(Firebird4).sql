﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT FIRST @take
	"p"."PersonID",
	"p"."Gender",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID

