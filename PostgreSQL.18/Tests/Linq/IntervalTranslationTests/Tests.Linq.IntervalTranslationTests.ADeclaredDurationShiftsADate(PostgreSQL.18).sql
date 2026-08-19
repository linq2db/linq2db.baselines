-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- PostgreSQL.18 PostgreSQL12
SELECT
	'2026-03-01'::date + ((r."InSeconds" * 10000000) / 10) * Interval '1 microsecond',
	'2026-03-01'::date - ((r."InSeconds" * 10000000) / 10) * Interval '1 microsecond',
	'2026-03-01'::date + (r."InTicks" / 10) * Interval '1 microsecond'
FROM
	"DurationRow" r
LIMIT 2

