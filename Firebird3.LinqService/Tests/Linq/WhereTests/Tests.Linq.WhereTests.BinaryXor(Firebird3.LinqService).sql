﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Bin_Xor("p"."PersonID", 2) = 3

