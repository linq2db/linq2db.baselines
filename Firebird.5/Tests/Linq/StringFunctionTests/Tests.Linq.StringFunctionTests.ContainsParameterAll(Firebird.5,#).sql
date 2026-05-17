-- Firebird.5 Firebird4
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%#%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123#456' LIKE @toTest ESCAPE '~'

