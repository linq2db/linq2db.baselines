-- Firebird.4 Firebird4
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	"p"."Conv" || '|' || Coalesce(CAST(@dash AS VARCHAR(1)), '')
FROM
	"ConvertedConcatRow" "p"
FETCH NEXT 2 ROWS ONLY

