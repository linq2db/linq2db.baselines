-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @p Bigint -- Int64
SET     @p = 1800

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InSeconds" > :p
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @p Bigint -- Int64
SET     @p = 18000000000

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InTicks" > :p
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @p Bigint -- Int64
SET     @p = 1800
DECLARE @p_1 Bigint -- Int64
SET     @p_1 = 1800

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InSeconds" = :p AND r."InSeconds" = :p_1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	1 = 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	1 = 0

