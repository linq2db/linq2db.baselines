-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-03 13:30:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-03 14:30:00'::timestamp

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
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT
	:Ticks + r."Id",
	:TotalMilliseconds + r."Id"::Float
FROM
	"EventRow" r
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id"
FROM
	"EventRow" r

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id"
FROM
	"EventRow" r

-- PostgreSQL.9.2 PostgreSQL
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-03 13:30:00'::timestamp

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	r."FinishedOn" > :FinishedOn

