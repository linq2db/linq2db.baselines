-- Firebird.5 Firebird4
DECLARE @fallback TimeStamp -- DateTime
SET     @fallback = TIMESTAMP '2026-05-25 09:00:00.0000'

SELECT
	LAG("r"."Value", 1, CAST(@fallback AS TimeStamp)) OVER (ORDER BY "r"."Id")
FROM
	"CoarseConvertedRow" "r"
ORDER BY
	"r"."Id"

