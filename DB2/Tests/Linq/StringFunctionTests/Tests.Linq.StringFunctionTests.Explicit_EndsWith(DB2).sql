-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE '%Persecution' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE '%persecution' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%persecution' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE '%persecution' ESCAPE '~'

