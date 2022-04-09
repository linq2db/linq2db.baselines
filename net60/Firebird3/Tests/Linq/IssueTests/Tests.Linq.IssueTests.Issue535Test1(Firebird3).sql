BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'J' AND ("p"."PersonID" = 1 OR "p"."LastName" = 'fail')

