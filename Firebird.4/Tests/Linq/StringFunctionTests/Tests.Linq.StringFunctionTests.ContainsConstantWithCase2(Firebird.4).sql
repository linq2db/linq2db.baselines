-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%Joh%' ESCAPE '~' AND "p"."PersonID" = 1

-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%Joh%' ESCAPE '~' AND "p"."PersonID" = 1

