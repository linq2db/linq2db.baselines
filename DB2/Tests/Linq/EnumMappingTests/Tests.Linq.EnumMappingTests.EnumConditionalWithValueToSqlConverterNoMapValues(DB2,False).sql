-- DB2 DB2.LUW DB2LUW
DECLARE @level Integer(4) -- Int32
SET     @level = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN "p"."PersonID" > 2 THEN 2
		ELSE 1
	END = @level
ORDER BY
	"p"."PersonID"

