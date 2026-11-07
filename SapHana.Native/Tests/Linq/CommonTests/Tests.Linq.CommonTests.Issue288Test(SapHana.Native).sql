-- SapHana.Native SapHana
SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IS NULL
LIMIT 1

-- SapHana.Native SapHana
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = :"p"
LIMIT 1

