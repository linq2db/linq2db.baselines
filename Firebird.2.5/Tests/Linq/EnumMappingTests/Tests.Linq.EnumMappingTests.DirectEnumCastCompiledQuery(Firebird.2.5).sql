-- Firebird.2.5 Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'F'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @Gender
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = @Gender
ORDER BY
	"p"."PersonID"

