BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."LastName" || ', ' || "p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."LastName" || ', ' || "p"."FirstName" = 'Pupkin, John'

