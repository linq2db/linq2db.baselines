﻿BeforeExecute
-- Firebird

SELECT 
	"nm"."FirstName"
FROM
	"Person" "nm"
WHERE
	Char_Length("nm"."FirstName") <> 0

BeforeExecute
-- Firebird

SELECT 
	"t1"."FirstName", 
	"t1"."PersonID", 
	"t1"."LastName", 
	"t1"."MiddleName", 
	"t1"."Gender"
FROM
	"Person" "t1"

