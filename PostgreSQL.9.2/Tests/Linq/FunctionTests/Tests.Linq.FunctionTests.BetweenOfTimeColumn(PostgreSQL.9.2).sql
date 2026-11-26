-- PostgreSQL.9.2 PostgreSQL
DECLARE @low Interval -- Object
SET     @low = 01:30:00
DECLARE @high Interval -- Object
SET     @high = 03:00:00

SELECT
	r."Id"
FROM
	"BetweenTimeRow" r
WHERE
	r."Value" BETWEEN :low AND :high
ORDER BY
	r."Id"

-- PostgreSQL.9.2 PostgreSQL
DECLARE @low Interval -- Object
SET     @low = 01:30:00
DECLARE @high Interval -- Object
SET     @high = 03:00:00

SELECT
	r."Id"
FROM
	"BetweenTimeRow" r
WHERE
	r."Value" NOT BETWEEN :low AND :high
ORDER BY
	r."Id"

