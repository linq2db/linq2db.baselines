-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'Jo' AND
	"p"."PersonID" = 1

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'jo' AND
	"p"."PersonID" = 1

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'Jo' AND
	"p"."PersonID" = 1

