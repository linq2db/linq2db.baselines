BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%jOh%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%jOh%' ESCAPE '~' AND "p"."PersonID" = 1

