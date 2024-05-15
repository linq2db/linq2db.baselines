BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") STARTING WITH 'joh' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") NOT STARTING WITH 'joh' AND
	"p"."PersonID" = 1

