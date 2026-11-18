-- Firebird.3 Firebird3
DECLARE @suffix VarChar(1) -- String
SET     @suffix = '-'

SELECT
	"r"."Plain" || "r"."Conv" || Coalesce(CAST(@suffix AS VARCHAR(1)), '')
FROM
	"PlainAndConvertedUnicodeRow" "r"
FETCH NEXT 2 ROWS ONLY

