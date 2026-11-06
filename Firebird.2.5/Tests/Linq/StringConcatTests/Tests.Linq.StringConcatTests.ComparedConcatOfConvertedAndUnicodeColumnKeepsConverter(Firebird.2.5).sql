-- Firebird.2.5 Firebird
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	"p"."Conv" || "p"."Title" = @bound

-- Firebird.2.5 Firebird
DECLARE @bound VarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	@bound = "p"."Conv" || "p"."Title"

-- Firebird.2.5 Firebird
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	"p"."Conv" || "p"."Title" IN ('x:c1T')

