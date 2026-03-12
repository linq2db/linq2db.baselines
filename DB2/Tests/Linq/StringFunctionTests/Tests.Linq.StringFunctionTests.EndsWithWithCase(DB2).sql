-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" NOT LIKE '%Persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "p"
WHERE
	"p"."Diagnosis" NOT LIKE '%persecution' ESCAPE '~' AND
	"p"."PersonID" = 2

