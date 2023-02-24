﻿BeforeExecute
-- Firebird3 Firebird

SELECT DISTINCT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"Person" "t2"
		WHERE
			"t1"."FirstName" = "t2"."FirstName" AND
			"t1"."PersonID" = "t2"."PersonID" AND
			"t1"."LastName" = "t2"."LastName" AND
			"t1"."MiddleName" = "t2"."MiddleName" AND
			"t1"."Gender" = "t2"."Gender"
	)
ORDER BY
	"t1"."LastName"

