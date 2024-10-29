BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."c1"
FROM
	(
		SELECT
			COUNT("p"."PersonID") as "c1"
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
	) "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."c1"
FROM
	(
		SELECT
			COUNT("p"."PersonID") as "c1"
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
	) "t1"

