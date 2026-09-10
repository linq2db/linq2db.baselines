-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" STARTING WITH 'J'
ORDER BY
	"x"."PersonID" DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

