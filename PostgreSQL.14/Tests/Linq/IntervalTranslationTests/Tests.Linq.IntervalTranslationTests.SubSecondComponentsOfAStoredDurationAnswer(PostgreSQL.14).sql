-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 1
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 12345670
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 1

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor(((r."InTicks" / 10000)::decimal % 1000)::decimal)::Int,
	Floor(((r."InTicks" / 10)::decimal % 1000)::decimal)::Int
FROM
	"DurationRow" r
LIMIT 2

