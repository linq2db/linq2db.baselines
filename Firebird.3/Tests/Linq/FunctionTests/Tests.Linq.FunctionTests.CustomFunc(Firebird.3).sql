BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."LastName" || ', ' || "p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."LastName" || ', ' || "p"."FirstName" = 'Pupkin, John'

