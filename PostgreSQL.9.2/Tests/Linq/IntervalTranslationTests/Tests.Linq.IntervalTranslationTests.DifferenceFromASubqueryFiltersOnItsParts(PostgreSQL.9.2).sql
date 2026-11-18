-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 15:00:00'::timestamp

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 11:00:00'::timestamp

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."Id"
FROM
	"EventRow" x
WHERE
	Extract(epoch From (x."FinishedOn" - x."StartedOn")) / 3600 > 3

-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."Id"
FROM
	"EventRow" x
WHERE
	Trunc(Extract(hour From (x."FinishedOn" - x."StartedOn")))::Int = 1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."Id"
FROM
	"EventRow" x
ORDER BY
	x."FinishedOn" - x."StartedOn" DESC

-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."FinishedOn" - x."StartedOn"
FROM
	"EventRow" x
ORDER BY
	x."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id",
	r."FinishedOn" - r."StartedOn"
FROM
	"EventRow" r
ORDER BY
	r."Id"

