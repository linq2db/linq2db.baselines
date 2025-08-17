BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%o~%h%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%o~%h%' ESCAPE '~' AND "p"."PersonID" = 1

