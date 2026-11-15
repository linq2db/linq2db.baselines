-- SapHana.Native SapHana
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = :"Gender"
ORDER BY
	"p"."PersonID"

-- SapHana.Native SapHana
DECLARE @Gender VarChar(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = :"Gender"
ORDER BY
	"p"."PersonID"

