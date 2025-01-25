BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "p"."FirstName" IS NULL OR CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) = 0
			THEN 1
		ELSE 0
	END
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

