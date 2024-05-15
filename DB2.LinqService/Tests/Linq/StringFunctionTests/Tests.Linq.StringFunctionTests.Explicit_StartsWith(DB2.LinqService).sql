BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	"r"."Diagnosis" LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Patient" "r"
WHERE
	Lower("r"."Diagnosis") LIKE 'hall%' ESCAPE '~'

