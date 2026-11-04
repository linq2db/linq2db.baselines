-- SapHana.Native SapHana
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") = :"bound"

-- SapHana.Native SapHana
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	:"bound" = ("p"."Conv" || "p"."Title")

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") IN ('x:c1T')

