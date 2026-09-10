-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 900
DECLARE @p_1 Bigint -- Int64
SET     @p_1 = 900

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds" >= :p AND x."InSeconds" <= :p_1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 2700
DECLARE @p_1 Bigint -- Int64
SET     @p_1 = 2700

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds" >= :p AND x."InSeconds" <= :p_1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 900
DECLARE @p_1 Bigint -- Int64
SET     @p_1 = 900

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds" >= :p AND x."InSeconds" <= :p_1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 2700
DECLARE @p_1 Bigint -- Int64
SET     @p_1 = 2700

SELECT
	x."Id",
	x."InSeconds",
	x."InTicks",
	x."Undeclared",
	x."UndeclaredSeconds"
FROM
	"DurationRow" x
WHERE
	x."InSeconds" >= :p AND x."InSeconds" <= :p_1

