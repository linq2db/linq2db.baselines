-- Firebird.2.5 Firebird
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT FIRST 2
	"p"."Conv" || '|' || Coalesce(CAST(@dash AS VARCHAR(1)), '')
FROM
	"ConvertedConcatRow" "p"

