BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Jo%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'jo%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE 'Jo%' ESCAPE '~' AND "p"."PersonID" = 1

