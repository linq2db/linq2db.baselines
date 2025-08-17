BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") STARTING WITH 'joh' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") NOT STARTING WITH 'joh' AND
	"p"."PersonID" = 1

