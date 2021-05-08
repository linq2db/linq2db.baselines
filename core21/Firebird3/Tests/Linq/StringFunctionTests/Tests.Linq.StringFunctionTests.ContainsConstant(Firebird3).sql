BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" CONTAINING 'jOh' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	("p"."FirstName" NOT CONTAINING 'jOh') AND "p"."PersonID" = 1

