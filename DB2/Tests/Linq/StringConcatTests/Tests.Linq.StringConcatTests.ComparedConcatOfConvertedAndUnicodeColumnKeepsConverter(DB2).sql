-- DB2 DB2.LUW DB2LUW
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") = @bound

-- DB2 DB2.LUW DB2LUW
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	@bound = ("p"."Conv" || "p"."Title")

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") IN ('x:c1T')

