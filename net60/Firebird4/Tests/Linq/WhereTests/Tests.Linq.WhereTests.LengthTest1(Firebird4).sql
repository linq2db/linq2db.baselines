﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	(Char_Length("nm"."MiddleName") <> 0 OR Char_Length("nm"."MiddleName") IS NULL)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

