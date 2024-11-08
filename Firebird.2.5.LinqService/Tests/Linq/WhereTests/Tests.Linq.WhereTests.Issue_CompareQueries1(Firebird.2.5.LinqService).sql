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
			"p"."PersonID" IN (1, 2)
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
			1 = 0
	) "t1"

