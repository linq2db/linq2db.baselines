BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."LastName" || ', ' || "p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."LastName" || ', ' || "p"."FirstName" = 'Pupkin, John'

