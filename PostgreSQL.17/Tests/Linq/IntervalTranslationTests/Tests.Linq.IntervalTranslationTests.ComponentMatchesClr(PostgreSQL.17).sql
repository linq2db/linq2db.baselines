-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 183845

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	((r."InSeconds"::BigInt * 10000000) / 864000000000)::Int,
	Floor((((r."InSeconds"::BigInt * 10000000) / 36000000000)::decimal % 24)::decimal)::Int,
	Floor((((r."InSeconds"::BigInt * 10000000) / 600000000)::decimal % 60)::decimal)::Int,
	Floor((((r."InSeconds"::BigInt * 10000000) / 10000000)::decimal % 60)::decimal)::Int
FROM
	"DurationRow" r
LIMIT 2

