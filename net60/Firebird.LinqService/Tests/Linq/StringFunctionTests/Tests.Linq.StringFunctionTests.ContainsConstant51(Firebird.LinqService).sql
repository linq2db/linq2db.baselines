BeforeExecute
-- Firebird
DECLARE @ps VarChar(3) -- String
SET     @ps = '%[%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' LIKE @ps ESCAPE '~'

