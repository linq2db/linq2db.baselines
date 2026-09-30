-- PostgreSQL.9.5 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From (:asOf - r."ClosedOn")) / 86400 > 0

-- PostgreSQL.9.5 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From (r."ClosedOn" - :asOf)) / 3600 > 0

-- PostgreSQL.9.5 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	Extract(epoch From (:asOf - r."ClosedOn")) / 60

-- PostgreSQL.9.5 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-10 08:15:30'::timestamp

SELECT
	Extract(epoch From (r."ClosedOn" - :asOf)) / 3600
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1
LIMIT 2

