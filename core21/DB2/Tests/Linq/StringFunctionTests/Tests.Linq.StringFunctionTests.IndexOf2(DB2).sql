BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Length_1 Integer(4) -- Int32
SET     @Length_1 = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN @Length_1 = 0 AND CHARACTER_LENGTH("p"."LastName",CODEUNITS32) > 2
			THEN 2
		ELSE Locate('e', "p"."LastName", 3) - 1
	END = 4 AND "p"."PersonID" = 2

