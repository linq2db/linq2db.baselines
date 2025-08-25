BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' LIKE @toTest ESCAPE '~'

