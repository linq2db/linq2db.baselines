BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "p"."FirstName" IS NULL OR CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) = 0
			THEN 1
		ELSE 0
	END,
	"p"."FirstName",
	CASE
		WHEN "p"."MiddleName" IS NULL OR CHARACTER_LENGTH("p"."MiddleName",CODEUNITS32) = 0
			THEN 1
		ELSE 0
	END,
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"

