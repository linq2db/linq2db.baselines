﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = @FirstName

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" IS NULL

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = @FirstName

