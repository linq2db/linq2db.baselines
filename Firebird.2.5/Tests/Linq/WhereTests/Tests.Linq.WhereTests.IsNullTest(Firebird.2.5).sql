﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"nm"."MiddleName"
FROM
	"Person" "nm"
WHERE
	"nm"."MiddleName" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

