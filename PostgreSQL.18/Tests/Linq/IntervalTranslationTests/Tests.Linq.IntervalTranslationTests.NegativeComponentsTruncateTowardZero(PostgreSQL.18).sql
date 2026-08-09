-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = -90000
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = -90000

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
	((r."InSeconds"::BigInt * 10000000) / 864000000000)::Int,
	Floor((((r."InSeconds"::BigInt * 10000000) / 36000000000)::decimal % 24)::decimal)::Int,
	(r."InSeconds"::BigInt * 10000000)::Float / 36000000000
FROM
	"DurationRow" r
LIMIT 2

