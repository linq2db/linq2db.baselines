-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	r."InSeconds" + r."InSeconds",
	r."InTicks" + r."InTicks",
	(r."InSeconds" * 10000000 + r."InTicks")::BigInt,
	(r."InSeconds" * 10000000 - r."InTicks")::BigInt,
	(r."InTicks" - r."InSeconds" * 10000000)::BigInt,
	((r."InSeconds" * 10000000 + r."InTicks")::BigInt + r."InSeconds" * 10000000)::BigInt,
	((-r."InSeconds")::BigInt * 10000000 + r."InTicks")::BigInt,
	(r."InSeconds" * 10000000 + r."InTicks")::BigInt,
	(r."InSeconds" * 10000000 + r."InTicks")::BigInt + r."InTicks" + r."InTicks",
	((r."InSeconds" + r."InSeconds")::BigInt * 10000000 + r."InTicks")::BigInt - (r."InTicks" + r."InTicks"),
	((-r."InSeconds")::BigInt * 10000000 - r."InTicks")::BigInt
FROM
	"DurationRow" r
LIMIT 2

-- PostgreSQL.11 PostgreSQL
SELECT
	(r."InSeconds" * 10000000 + r."InTicks")::BigInt
FROM
	"DurationRow" r
LIMIT 2

