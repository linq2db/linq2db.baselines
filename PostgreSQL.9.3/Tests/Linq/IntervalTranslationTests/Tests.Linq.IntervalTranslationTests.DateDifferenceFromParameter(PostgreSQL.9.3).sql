-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-05'::date

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

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-03'::date
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-03 20:00:00'::timestamp

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

-- PostgreSQL.9.3 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-03 13:30:00'::timestamp

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	Extract(epoch From (:asOf - r."StartedOn")) / 3600 > 24

-- PostgreSQL.9.3 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-03 13:30:00'::timestamp

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	Extract(epoch From (r."FinishedOn" - :asOf)) / 3600 > 24

-- PostgreSQL.9.3 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-03 13:30:00'::timestamp

SELECT
	r."Id"
FROM
	"EventRow" r
ORDER BY
	Extract(epoch From (:asOf - r."StartedOn")) / 60

-- PostgreSQL.9.3 PostgreSQL
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-03 13:30:00'::timestamp

SELECT
	Extract(epoch From (:asOf - r."StartedOn")) / 86400,
	Trunc(Extract(hour From (:asOf - r."StartedOn")))::Int
FROM
	"EventRow" r
WHERE
	r."Id" = 1
LIMIT 2

