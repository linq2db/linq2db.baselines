-- Firebird.2.5 Firebird
DECLARE @suffix VarChar(1) -- String
SET     @suffix = '-'

SELECT FIRST 2
	"r"."Plain" || "r"."Conv" || Coalesce(CAST(@suffix AS VARCHAR(1)), '')
FROM
	"PlainAndConvertedUnicodeRow" "r"

