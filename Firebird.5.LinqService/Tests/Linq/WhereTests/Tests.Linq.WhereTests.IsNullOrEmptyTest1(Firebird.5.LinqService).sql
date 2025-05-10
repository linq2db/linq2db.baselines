﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	NOT ("nm"."MiddleName" IS NULL OR Char_Length("nm"."MiddleName") = 0 AND "nm"."MiddleName" IS NOT NULL)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

