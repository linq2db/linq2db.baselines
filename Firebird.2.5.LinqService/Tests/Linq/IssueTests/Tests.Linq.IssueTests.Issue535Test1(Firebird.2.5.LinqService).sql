BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'J' AND ("p"."PersonID" = 1 OR "p"."LastName" = 'fail')

