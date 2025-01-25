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
	Lower("p"."FirstName") STARTING WITH 'joh' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") NOT STARTING WITH 'joh' AND
	"p"."PersonID" = 1

