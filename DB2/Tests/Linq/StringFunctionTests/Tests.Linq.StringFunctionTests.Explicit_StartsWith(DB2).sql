-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'Hall%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'hall%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

