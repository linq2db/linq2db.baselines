BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'Jo' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'jo' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'Jo' AND
	"p"."PersonID" = 1

