BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE @nameToCheck_1 ESCAPE '~' AND
	"p"."PersonID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE @nameToCheck_1 ESCAPE '~' AND
	"p"."PersonID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE @nameToCheck_1 ESCAPE '~' AND
	"p"."PersonID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @nameToCheck_1 VarChar(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE @nameToCheck_1 ESCAPE '~' AND
	"p"."PersonID" = 1

