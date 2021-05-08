BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Jo' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'jo' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	("p"."FirstName" NOT STARTING WITH 'Jo') AND "p"."PersonID" = 1

