-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimestampTz -- DateTimeOffset
SET     @StartedOn = '2026-01-01 12:00:00.000000+00:00'::timestamptz
DECLARE @FinishedOn TimestampTz -- DateTimeOffset
SET     @FinishedOn = '2026-01-01 12:00:00.000000+00:00'::timestamptz

INSERT INTO "ZonedEventRow"
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

-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimestampTz -- DateTimeOffset
SET     @StartedOn = '2026-01-01 10:00:00.000000+00:00'::timestamptz
DECLARE @FinishedOn TimestampTz -- DateTimeOffset
SET     @FinishedOn = '2026-01-01 12:00:00.000000+00:00'::timestamptz

INSERT INTO "ZonedEventRow"
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."StartedOn",
	r."FinishedOn"
FROM
	"ZonedEventRow" r
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 3600
FROM
	"ZonedEventRow" r
ORDER BY
	r."Id"

