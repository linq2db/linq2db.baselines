-- Firebird.5 Firebird4

SELECT
	COUNT("p"."PersonID")
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (1, 2)
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4

SELECT
	COUNT("p"."PersonID")
FROM
	"Person" "p"
WHERE
	1 = 0
FETCH NEXT 2 ROWS ONLY

