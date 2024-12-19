﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @personId Integer(4) -- Int32
SET     @personId = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @personId AND "p"."PersonID" = @personId AND
	"p"."PersonID" = @personId

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @personId Integer(4) -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer(4) -- Int32
SET     @personId_1 = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender",
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @personId AND "p"."PersonID" = @personId AND
	"p"."PersonID" = @personId_1

