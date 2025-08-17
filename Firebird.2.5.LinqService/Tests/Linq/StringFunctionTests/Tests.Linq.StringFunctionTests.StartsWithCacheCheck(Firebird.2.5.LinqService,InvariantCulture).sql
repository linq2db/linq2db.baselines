BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'Joh' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'Joh' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'JOH' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'JOH' AND
	"p"."PersonID" = 1

