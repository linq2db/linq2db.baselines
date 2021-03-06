﻿BeforeExecute
-- Firebird

SELECT
	"t1"."FirstName"
FROM
	"Person" "t1"
GROUP BY
	"t1"."FirstName"

BeforeExecute
-- Firebird
DECLARE @FirstName_1 VarChar(4) -- String
SET     @FirstName_1 = 'Jane'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName_1

BeforeExecute
-- Firebird
DECLARE @FirstName_1 VarChar(4) -- String
SET     @FirstName_1 = 'John'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName_1

BeforeExecute
-- Firebird
DECLARE @FirstName_1 VarChar(6) -- String
SET     @FirstName_1 = _utf8 x'4AC3BC7267656E'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName_1

BeforeExecute
-- Firebird
DECLARE @FirstName_1 VarChar(6) -- String
SET     @FirstName_1 = 'Tester'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName_1

