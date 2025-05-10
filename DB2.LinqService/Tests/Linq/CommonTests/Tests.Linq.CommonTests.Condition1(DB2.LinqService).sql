BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) <> 0 THEN "p"."FirstName"
		WHEN NOT ("p"."MiddleName" IS NULL OR CHARACTER_LENGTH("p"."MiddleName",CODEUNITS32) = 0 AND "p"."MiddleName" IS NOT NULL)
			THEN "p"."MiddleName"
		ELSE "p"."LastName"
	END
FROM
	"Person" "p"

