BeforeExecute
-- Firebird
DECLARE @gender_1 Char(1) -- String
SET     @gender_1 = 'M'

SELECT 
	"p"."FirstName", 
	"p"."PersonID", 
	"p"."LastName", 
	"p"."MiddleName", 
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @gender_1

