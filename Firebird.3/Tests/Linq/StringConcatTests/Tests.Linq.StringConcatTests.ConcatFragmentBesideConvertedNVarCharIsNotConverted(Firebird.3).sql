-- Firebird.3 Firebird3
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	"p"."Conv" || '|' || Coalesce(CAST(@dash AS VARCHAR(1)), '')
FROM
	"ConvertedUnicodeConcatRow" "p"
FETCH NEXT 2 ROWS ONLY

