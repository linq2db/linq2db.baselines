-- DB2 DB2.LUW DB2LUW
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

