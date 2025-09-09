BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' LIKE '%[%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' NOT LIKE '%[%' ESCAPE '~'

