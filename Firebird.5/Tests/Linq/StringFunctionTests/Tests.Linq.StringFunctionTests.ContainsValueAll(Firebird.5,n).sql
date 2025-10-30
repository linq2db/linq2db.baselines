-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' LIKE '%n%' ESCAPE '~'

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' NOT LIKE '%n%' ESCAPE '~'

