-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

