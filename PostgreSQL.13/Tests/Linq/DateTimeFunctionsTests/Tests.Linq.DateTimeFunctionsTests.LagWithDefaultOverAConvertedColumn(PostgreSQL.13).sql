-- PostgreSQL.13 PostgreSQL12
DECLARE @fallback Timestamp -- DateTime2
SET     @fallback = '2026-05-25 09:00:00'::timestamp

SELECT
	LAG(r."Value", 1, :fallback) OVER (ORDER BY r."Id")
FROM
	"CoarseConvertedRow" r
ORDER BY
	r."Id"

