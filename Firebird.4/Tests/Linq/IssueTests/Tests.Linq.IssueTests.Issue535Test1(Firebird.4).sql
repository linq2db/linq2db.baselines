-- Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'J' AND ("p"."PersonID" = 1 OR "p"."LastName" = 'fail')
FETCH NEXT 1 ROWS ONLY

