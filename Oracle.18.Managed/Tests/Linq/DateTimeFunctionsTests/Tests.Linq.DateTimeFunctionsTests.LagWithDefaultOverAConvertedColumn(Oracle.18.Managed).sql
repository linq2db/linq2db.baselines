-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @fallback TimeStamp -- DateTime
SET     @fallback = TIMESTAMP '2026-05-25 09:00:00.000000'

SELECT
	LAG(r."Value", 1, :fallback) OVER (ORDER BY r."Id")
FROM
	"CoarseConvertedRow" r
ORDER BY
	r."Id"

