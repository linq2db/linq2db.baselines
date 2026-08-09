-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 900
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 900

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 1800

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 2700

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 9000000000

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds"::BigInt * 10000000 = :Ticks

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 27000000000

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds"::BigInt * 10000000 = :Ticks

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 9000000000

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds"::BigInt * 10000000 = :Ticks

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Ticks Bigint -- Int64
SET     @Ticks = 27000000000

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds"::BigInt * 10000000 = :Ticks

