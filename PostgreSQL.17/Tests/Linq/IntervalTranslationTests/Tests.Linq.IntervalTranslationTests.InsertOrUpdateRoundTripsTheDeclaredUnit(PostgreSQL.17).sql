-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @value Bigint -- Int64
SET     @value = 4567
DECLARE @value_1 Bigint -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2 Bigint -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3 Bigint -- Int64
SET     @value_3 = 4567

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
	1,
	:value,
	:value_1,
	:value_2,
	:value_3
)
ON CONFLICT ("Id") DO UPDATE SET
	"InSeconds" = :value,
	"InTicks" = :value_1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @value Bigint -- Int64
SET     @value = 19260
DECLARE @value_1 Bigint -- Int64
SET     @value_1 = 192600000000
DECLARE @value_2 Bigint -- Int64
SET     @value_2 = 192600000000
DECLARE @value_3 Bigint -- Int64
SET     @value_3 = 19260

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
	1,
	:value,
	:value_1,
	:value_2,
	:value_3
)
ON CONFLICT ("Id") DO UPDATE SET
	"InSeconds" = :value,
	"InTicks" = :value_1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

