-- Firebird.3 Firebird3
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") = @bound

-- Firebird.3 Firebird3
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	@bound = ("p"."Conv" || "p"."Title")

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") IN ('x:c1T')

