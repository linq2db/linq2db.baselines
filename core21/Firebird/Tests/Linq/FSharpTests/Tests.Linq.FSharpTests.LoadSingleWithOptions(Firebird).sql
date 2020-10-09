BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT FIRST @take 
	"p"."PersonID", 
	"p"."FirstName", 
	"p"."LastName", 
	"p"."MiddleName", 
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID

