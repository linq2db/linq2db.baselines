-- Firebird.2.5 Firebird
DECLARE @gender VarChar(1) -- String
SET     @gender = 'M'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	@gender = CASE
		WHEN "p"."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END
ORDER BY
	"p"."PersonID"

