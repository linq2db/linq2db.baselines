-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DueOn Timestamp -- DateTime2
SET     @DueOn = '2026-01-01 10:00:00'::timestamp
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	:Id,
	:DueOn,
	:StartedOn
)

-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DueOn Timestamp -- DateTime2
SET     @DueOn = NULL
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	:Id,
	:DueOn,
	:StartedOn
)

-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @DueOn Timestamp -- DateTime2
SET     @DueOn = '2026-01-01 12:00:00'::timestamp
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	:Id,
	:DueOn,
	:StartedOn
)

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."DueOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."StartedOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."DueOn" - (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."StartedOn" + (NULL::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."DueOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
ORDER BY
	r."Id"

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"OptionalDueRow" r
WHERE
	r."DueOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond' > r."StartedOn" + 1 * Interval '1 Hour'
ORDER BY
	r."Id"

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1 AND r."StartedOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond' < r."StartedOn" + 1 * Interval '1 Hour'

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 36002500000

SELECT
	r."StartedOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."StartedOn" + (NULL::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 72002500000

SELECT
	r."StartedOn" + (:Ticks::BigInt / 10) * Interval '1 microsecond'
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."DueOn" + (r."DueOn" - r."StartedOn")
FROM
	"OptionalDueRow" r
ORDER BY
	r."Id"

