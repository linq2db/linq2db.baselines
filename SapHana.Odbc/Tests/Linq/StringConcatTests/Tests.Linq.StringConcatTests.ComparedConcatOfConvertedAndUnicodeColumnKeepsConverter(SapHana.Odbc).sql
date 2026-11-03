-- SapHana.Odbc SapHanaOdbc
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	? = ("p"."Conv" || "p"."Title")

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" "p"
WHERE
	("p"."Conv" || "p"."Title") IN ('x:c1T')

