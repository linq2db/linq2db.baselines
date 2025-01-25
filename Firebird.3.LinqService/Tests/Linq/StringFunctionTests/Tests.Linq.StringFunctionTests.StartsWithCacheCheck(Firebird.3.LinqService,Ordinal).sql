BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'Joh' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'Joh' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'JOH' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'JOH' AND
	"p"."PersonID" = 1

