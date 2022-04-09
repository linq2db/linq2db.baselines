BeforeExecute
-- Firebird
DECLARE @toTest_1 VarChar(3) -- String
SET     @toTest_1 = '%?%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123?456' LIKE @toTest_1 ESCAPE '~'

