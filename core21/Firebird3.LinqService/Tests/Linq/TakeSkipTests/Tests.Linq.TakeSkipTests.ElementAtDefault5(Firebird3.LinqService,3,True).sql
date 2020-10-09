BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT FIRST @take SKIP @skip 
	"t1"."FirstName", 
	"t1"."PersonID", 
	"t1"."LastName", 
	"t1"."MiddleName", 
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."LastName"

