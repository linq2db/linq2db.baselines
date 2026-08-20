-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 4567

INSERT INTO "DurationRow" AS t1
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
ON CONFLICT ("Id") DO UPDATE SET
	"InSeconds" = :InSeconds,
	"InTicks" = :InTicks,
	"Undeclared" = :Undeclared,
	"UndeclaredSeconds" = :UndeclaredSeconds

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 192600000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 19260

INSERT INTO "DurationRow" AS t1
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
ON CONFLICT ("Id") DO UPDATE SET
	"InSeconds" = :InSeconds,
	"InTicks" = :InTicks,
	"Undeclared" = :Undeclared,
	"UndeclaredSeconds" = :UndeclaredSeconds

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

