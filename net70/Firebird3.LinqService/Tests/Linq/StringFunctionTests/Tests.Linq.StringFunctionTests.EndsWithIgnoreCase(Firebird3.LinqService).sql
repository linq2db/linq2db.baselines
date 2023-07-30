BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE '%JOHN' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" NOT LIKE '%JOHN' ESCAPE '~' AND "p"."PersonID" = 1

