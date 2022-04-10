BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND "_"."Gender" = 'M'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND 'M' = "_"."Gender"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @gender Char(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND "_"."Gender" = @gender

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @gender Char(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1 AND @gender = "_"."Gender"

