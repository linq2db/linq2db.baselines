BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) = 0 AS smallint)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

