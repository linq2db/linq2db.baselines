﻿BeforeExecute
-- Firebird

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	("nm"."MiddleName" IS NOT NULL AND (Char_Length("nm"."MiddleName") <> 0 OR Char_Length("nm"."MiddleName") IS NULL))

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

