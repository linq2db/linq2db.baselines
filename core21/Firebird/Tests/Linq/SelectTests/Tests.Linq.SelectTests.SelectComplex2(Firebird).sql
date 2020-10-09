BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t1"."PersonID", 
	"t1"."Gender", 
	"t1"."FirstName", 
	"t1"."MiddleName", 
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = 1

