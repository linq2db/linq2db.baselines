-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE 'joh%' ESCAPE '~' AND "p"."PersonID" = 1

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") NOT LIKE 'joh%' ESCAPE '~' AND
	"p"."PersonID" = 1

