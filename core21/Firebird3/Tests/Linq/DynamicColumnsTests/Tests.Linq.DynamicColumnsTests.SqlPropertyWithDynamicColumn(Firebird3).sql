﻿BeforeExecute
-- Firebird3 Firebird

SELECT 
	"x"."PersonID", 
	"x"."FirstName", 
	"x"."LastName", 
	"x"."MiddleName"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = 'John'

