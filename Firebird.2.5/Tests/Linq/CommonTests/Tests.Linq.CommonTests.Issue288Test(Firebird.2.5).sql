BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT FIRST 1
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @ID

