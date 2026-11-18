-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 3000000005

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

-- PostgreSQL.15 PostgreSQL12
SELECT
	(r."InSeconds" / 86400)::Int,
	Floor((r."InSeconds" / 3600)::decimal % 24)::BigInt::Int,
	Floor((r."InSeconds" / 60)::decimal % 60)::BigInt::Int,
	Floor(r."InSeconds"::decimal % 60)::BigInt::Int
FROM
	"DurationRow" r
LIMIT 2

-- PostgreSQL.15 PostgreSQL12
DECLARE @Seconds Integer -- Int32
SET     @Seconds = 5

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	Floor(r."InSeconds"::decimal % 60)::BigInt::Int = :Seconds

