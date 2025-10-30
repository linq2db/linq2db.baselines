-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN CHAR_LENGTH("p"."FirstName") <> 0 THEN "p"."FirstName"
		WHEN NOT ("p"."MiddleName" IS NULL OR CHAR_LENGTH("p"."MiddleName") = 0)
			THEN "p"."MiddleName"
		ELSE "p"."LastName"
	END
FROM
	"Person" "p"

