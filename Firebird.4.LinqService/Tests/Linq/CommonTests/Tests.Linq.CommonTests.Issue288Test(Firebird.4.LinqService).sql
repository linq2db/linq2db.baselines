BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @ID
FETCH NEXT 1 ROWS ONLY

