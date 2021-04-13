BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" CONTAINING 'o%h' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	("p"."FirstName" NOT CONTAINING 'o%h') AND "p"."PersonID" = 1

