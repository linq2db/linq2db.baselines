-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%o~%h%' ESCAPE '~' AND "p"."PersonID" = 1

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%o~%h%' ESCAPE '~' AND "p"."PersonID" = 1

