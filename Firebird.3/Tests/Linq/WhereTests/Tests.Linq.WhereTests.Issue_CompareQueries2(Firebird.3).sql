-- Firebird.3 Firebird3

SELECT
	COUNT("p"."PersonID")
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (1, 2) AND NOT EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" IN (3) AND "p"."PersonID" = "p_1"."PersonID"
	)
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	COUNT("p"."PersonID")
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (3) AND NOT EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" IN (1, 2) AND "p"."PersonID" = "p_1"."PersonID"
	)
FETCH NEXT 2 ROWS ONLY

