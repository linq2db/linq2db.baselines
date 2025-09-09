BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%o~%h%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%o~%h%' ESCAPE '~' AND "p"."PersonID" = 1

