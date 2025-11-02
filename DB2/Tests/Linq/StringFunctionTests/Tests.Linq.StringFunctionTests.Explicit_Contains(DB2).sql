-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

