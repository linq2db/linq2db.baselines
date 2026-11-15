-- Firebird.3 Firebird3
DECLARE @value Char(1) -- String
SET     @value = 'M'

SELECT
	"p"."PersonID",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN "p"."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END = @value

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

