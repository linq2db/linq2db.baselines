BeforeExecute
-- Firebird3 Firebird
DECLARE @toTest_1 VarChar(3) -- String
SET     @toTest_1 = '%n%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' LIKE @toTest_1 ESCAPE '~'

