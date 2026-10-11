-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 12:00:00'::timestamp

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."StartedOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"EventRow" r
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."FinishedOn" - (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"EventRow" r
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	r."StartedOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond' < r."FinishedOn"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	r."FinishedOn" - (:Ticks::BigInt / 10) * Interval '1 microsecond' > r."StartedOn" + 1 * Interval '1 Hour'

