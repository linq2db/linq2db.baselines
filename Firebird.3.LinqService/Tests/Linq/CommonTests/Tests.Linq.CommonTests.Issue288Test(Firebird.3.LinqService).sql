BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @ID
FETCH NEXT 1 ROWS ONLY

