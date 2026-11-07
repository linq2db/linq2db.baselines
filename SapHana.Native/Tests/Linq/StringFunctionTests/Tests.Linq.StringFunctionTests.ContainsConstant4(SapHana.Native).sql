-- SapHana.Native SapHana
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND :"s" LIKE '%[%' ESCAPE '~'

-- SapHana.Native SapHana
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND :"s" NOT LIKE '%[%' ESCAPE '~'

