BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%-%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123-456' LIKE @toTest ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%-%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123-456' NOT LIKE @toTest ESCAPE '~'

