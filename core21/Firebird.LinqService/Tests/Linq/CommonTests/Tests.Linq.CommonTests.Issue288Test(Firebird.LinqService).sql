BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT FIRST @take 
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @ID

