BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" LIKE 'J%' ESCAPE '~'
ORDER BY
	"x"."PersonID" DESC
LIMIT ? OFFSET ?

