﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Jo' AND "p"."FirstName" IS NOT NULL

