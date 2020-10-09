BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT FIRST @take 
	"t"."FirstName", 
	"t"."PersonID", 
	"t"."LastName", 
	"t"."MiddleName", 
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @p VarChar(6) -- String
SET     @p = 'Tester'

SELECT FIRST @take 
	"t"."FirstName", 
	"t"."PersonID", 
	"t"."LastName", 
	"t"."MiddleName", 
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p

