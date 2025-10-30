-- Firebird.2.5 Firebird

SELECT FIRST 2
	COUNT("p"."PersonID")
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (1, 2)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	COUNT("p"."PersonID")
FROM
	"Person" "p"
WHERE
	1 = 0

