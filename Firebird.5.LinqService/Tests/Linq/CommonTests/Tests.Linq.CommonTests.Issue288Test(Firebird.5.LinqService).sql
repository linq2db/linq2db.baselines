BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @ID
FETCH NEXT @take ROWS ONLY

