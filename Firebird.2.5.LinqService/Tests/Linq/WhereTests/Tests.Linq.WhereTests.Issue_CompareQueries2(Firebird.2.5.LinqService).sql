BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
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

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 2
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

