-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	(r."InSeconds"::BigInt * 10000000)::Float / 36000000000,
	Floor((((r."InSeconds"::BigInt * 10000000) / 36000000000)::decimal % 24)::decimal)::Int,
	r."InTicks"::BigInt::Float / 600000000
FROM
	"DurationRow" r
LIMIT 2

